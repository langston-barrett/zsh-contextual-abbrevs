# Contextual Abbreviations for ZSH

Contextual abbreviations (cabbrevs) are like aliases that are only valid
in certain contexts and expand automatically. For example, the cabbrev
`docker,a,attach` means "Expand `a` to `attach`, but only when the current
command line starts with `docker`". With this cabbrev, when you type
`docker a<SPACE>`, it will automatically expand to `docker attach`, but
`echo a<SPACE>` is just `echo a `.

The following demo shows just how many keystrokes you can save.  `docker a`
expands to `docker attach`. Pressing space again shows the available cabbrevs,
entering `n d ` results in `docker attach --no-stdin --detach-keys`.

![Demo of contextual abbreviations for docker attach](./demo.gif)

Another example: `git ce q j 4 be` expands to `git clone --quiet --jobs 4
--bare`.

