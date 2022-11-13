# contextual-abbrevs.zsh
#
# See https://github.com/langston-barrett/zsh-contextual-abbrevs

# NOTE[longest-prefix]: An abbreviation is applicable when its context matches
# the current command line. If done naively, this can lead to too many matches.
# Consider the abbreviations
#
#   "cargo,f,fmt"
#   "cargo build,t,test"
#
# If the command line is "cargo build", then "f" probably should *not* expand
# to "fmt" - the two subcommands are not valid together. Therefore, aliaes are
# only considered applicable when their context/prefix is *the longest* prefix
# that matches the current command line. To make this matching more performant,
# the arrays of abbrevs are pre-sorted by decreasing prefix length.

# Collect abbrevs
export ABBREVS=()
collect_abbrevs() {
  # https://stackoverflow.com/questions/9901210 
  local path_of_this_file="${(%):-%x}"
  for f in "$(dirname "${path_of_this_file}")"/abbrevs/*.zsh; do
    source "${f}"
    for a in "${_ABBREVS[@]}"; do
      ABBREVS+=("${a}")
    done
    unset _abbrevs
  done
}
collect_abbrevs

# abbrevs that should *not* be expanded
NO_EXPAND=(
  "ls"
  "z"
)

# Collect (print) all of the alises that apply to the given argument
applicable-abbrevs() {
  local longest_prefix

  for abbrev in "${ABBREVS[@]}"; do
    IFS=',' read -A arr <<< "${abbrev}"
    pfx="${arr[1]}"
    abbrev="${arr[2]}"
    expansion="${arr[3]}"
    if [[ "${1#${pfx}}" != "${1}" ]]; then
      # See NOTE[longest-prefix].
      if [[ -n "${longest_prefix}" ]] && [[ "${pfx}" != "${longest_prefix}" ]] ; then
        break
      else
        longest_prefix="${pfx}"
      fi
      if [[ "${#abbrev}" == 1 ]]; then
        abbrev="${abbrev} "
      fi
      printf "%s --> %s\n" "${abbrev}" "${expansion}"
    fi
  done
}

# Expand applicable abbrevs in the ${BUFFER}
do-expand-abbrevs() {
  local longest_prefix

  # Split buffer on spaces
  IFS=' ' read -A words <<< "${BUFFER}"
  
  # "Manually" expand abbrevs
  #
  # TODO: Reverse-expansion for manually-entered stuff, like You Should Use
  for abbrev in ${ABBREVS[@]}; do
    # Split on commas
    IFS=',' read -A arr <<< "${abbrev}"
    pfx="${arr[1]}"
    abbrev="${arr[2]}"
    expansion="${arr[3]}"
    if [[ "${BUFFER#${pfx}}" != "${BUFFER}" ]] && \
       [[ "${BUFFER% ${abbrev}}" != "${BUFFER}" ]]; then
      # See NOTE[longest-prefix].
      if [[ -n "${longest_prefix}" ]] && [[ "${pfx}" != "${longest_prefix}" ]] ; then
        break
      else
        longest_prefix="${pfx}"
      fi
      BUFFER="${BUFFER% ${abbrev}} ${expansion}"
      CURSOR="${#BUFFER}"
    fi
  done
  
  # Expand ZSH aliases
  # https://github.com/rothgar/mastering-zsh/blob/master/docs/helpers/abbrevs.md#automatically-expand-aliases
  zle _expand_alias
  zle expand-word
}

expand-abbrevs() {
  # Split buffer on spaces
  IFS=' ' read -A words <<< "${BUFFER}"
  for avoid in "${NO_EXPAND[@]}"; do
    if [[ "${words[1]}" == "${avoid}" ]]; then
      return
    fi
  done
  do-expand-abbrevs
}

expand-abbrevs-space() {
  if [[ "${BUFFER% }" == "${BUFFER}" ]] || [[ "${CURSOR}" != "${#BUFFER}" ]]; then
    expand-abbrevs
    zle self-insert
  else
    # If the user entered space twice, show applicable abbrevs
    zle -M "$(applicable-abbrevs "${BUFFER% }")"
  fi
}
zle -N expand-abbrevs-space

expand-abbrevs-ret() {
  expand-abbrevs
  zle .accept-line
}
zle -N expand-abbrevs-ret

# space and enter expand all abbrevs, including global
bindkey -M emacs " " expand-abbrevs-space
bindkey -M viins " " expand-abbrevs-space
bindkey -M emacs "^M" expand-abbrevs-ret
bindkey -M viins "^M" expand-abbrevs-ret

# control-space is a normal space
bindkey -M emacs "^ " magic-space
bindkey -M viins "^ " magic-space

# normal space during searches
bindkey -M isearch " " magic-space
