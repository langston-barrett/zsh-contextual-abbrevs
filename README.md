# Contextual Abbreviations for ZSH

Contextual abbreviations (cabbrevs) are like aliases that are only valid
in certain contexts and expand automatically. For example, the cabbrev
`docker,a,attach` means "Expand `a` to `attach`, but only when the current
command line starts with `docker`". With this cabbrev, when you type
`docker a<SPACE>`, it will automatically expand to `docker attach`, but
`echo a<SPACE>` is still just `echo a `.

The following demo shows just how many keystrokes you can save.  `docker a`
expands to `docker attach`. Pressing space again shows the available cabbrevs,
entering `n d ` results in `docker attach --no-stdin --detach-keys`.

![Demo of contextual abbreviations for docker attach](./demo.gif)

Another example: `git ce q j 4 be` expands to `git clone --quiet --jobs 4
--bare`.

This repo also contains a script for generating cabbrevs from `--help` text.

## Installation

### Manual

Clone the repo somewhere:
```sh
git clone https://github.com/langston-barrett/zsh-contextual-abbrevs ~/somewhere
```
Then add this line to your `~/.zshrc`:
```sh
source ~/somewhere/src/contextual-abbrevs.zsh
```

### With a Plugin Manager

You can install zsh-contextual-abbrevs with a zsh plugin manager, including those built into frameworks such as Oh-My-Zsh (OMZ) and prezto. Each has their own way of doing things. Read your package manager's documentation or the [zsh plugin manager plugin installation procedures gist](https://gist.github.com/olets/06009589d7887617e061481e22cf5a4a).

## Configuration

cabbrevs are defined in ZSH arrays named `_ABBREVS`, like so:
```sh
_ABBREVS=(
"git restore,s,--source"
"git restore,p,--patch"
"git restore,W,--worktree"
)
``` 
(This example was extracted from [git.zsh](./src/abbrevs/git.zsh).)
Each file in [`./src/abbrevs`](./src/abbrevs) contains one such array.
These arrays *must* be sorted in *decreasing prefix length*.

You can generate abbreviations from help text using 
[`extract-abbrevs.py`](./scripts/extract-abbrevs.py), e.g.
```sh
./scripts/extract-abbrevs.py git
```

## Comparison to Other Tools

Contextual abbreviations work like [globalias][glob] or [zsh-abbr][abbr],
except that they are *contextual* - `a` expands differently when it comes after
*`git` vs. `docker`.

[#1]: https://github.com/langston-barrett/zsh-contextual-abbrevs/issues/1
[abbr]: https://github.com/olets/zsh-abbr
[glob]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/globalias