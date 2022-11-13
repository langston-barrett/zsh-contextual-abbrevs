#!/usr/bin/env python3

# Extract abbreviations from help text

from dataclasses import dataclass, field
from subprocess import check_output, STDOUT, CalledProcessError
from sys import argv, stdin

@dataclass
class Subcommand:
    cmd: str
    
    def abbrev(self):
        return self.cmd[0]
    
    def deconflict(self, abbrev):
        if self.abbrev() == abbrev:
            return self.cmd[0] + self.cmd[-1]
        return self.abbrev()

@dataclass
class Option:
    short: str
    long: str
    
    def abbrev(self):
        if self.short is None:
            return self.long[0]
        return self.short
    
    def deconflict(self, abbrev):
        if self.short is not None:
            return self.short
        if self.abbrev() == abbrev:
            return self.long[0] + self.long[-1]
        return self.abbrev()

def extract(prog, s):

    options = []
    subcommands = []

    for line in s.splitlines():
                
        # Subcommands
        if not line.startswith("  "):
            continue
        
        # Often, they start with >2 spaces, then the name of the subcommand
        line = line.lstrip()
        words = line.split()
        if len(words) <= 1:
            continue
        if words[0][0] != "-":
            # The description comes immediately after, or, in the case of
            # cargo aliases, just after the alias. The description usually
            # starts with a capital.
            if words[1][0].isupper() or (len(words) > 2 and words[2][0].isupper()):
                sub = words[0].replace(",", "")
                if sub in prog:
                    # recursion!
                    continue
                if not sub.isalnum():
                    continue
                if sub[0].isupper():
                    continue
                subcommands += [Subcommand(sub)]
                continue
    
        if "--" not in line:
            continue

        # Options

        line = line.strip().split()        
        if len(line) < 1:
            continue
            
        short = None
        if line[0].startswith("-") and not line[0].startswith("--"):
            canonical = True
            short = line[0][len("-"):][0]
            line.pop(0)

        while len(line) > 0:
            if line[0].startswith("--"):
                break
            line.pop(0)
            
        if line == []:
            continue

        if line[0].startswith("--"):
            opt = line[0][len("--"):]
            if "[" in opt:
                opt = opt[:opt.find("[")]
            if "=" in opt:
                opt = opt[:opt.find("=")]
            opt = opt.replace("]", "")
            opt = opt.replace(",", "")
            if not opt.replace("-", "").isalnum():
                continue
            if opt == "":
                continue
            if 2 >= len(opt):
                continue
            options += [Option(short, opt)]

    subs = []
    for sub in subcommands:
    
        # Deconflict
        abbrev = sub.abbrev()
        for sub2 in subcommands:
            if sub2 == sub:
                continue
            abbrev = sub.deconflict(sub2.abbrev())
            if abbrev != sub.abbrev():
                break
        for opt in options:
            if abbrev != sub.abbrev():
                break
            abbrev = sub.deconflict(opt.abbrev())

        if len(abbrev) >= len(sub.cmd):
            continue

        subs += [f'"{prog},{abbrev},{sub.cmd}"']

    opts = []
    for opt in options:

        # Deconflict
        abbrev = opt.abbrev()
        for opt2 in options:
            if opt2 == opt:
                continue
            abbrev = opt.deconflict(opt2.abbrev())
            if abbrev != opt.abbrev():
                break
        for sub in subcommands:
            if abbrev != opt.abbrev():
                break
            abbrev = opt.deconflict(sub.abbrev())
        
        opts += [f'"{prog},{abbrev},--{opt.long}"']
        
    return (subcommands, subs, opts)
        

def go(cmds):
    r = []
    try:
        out = check_output(cmds + ["--help"], stderr=STDOUT, encoding="utf-8")
    except CalledProcessError:
        return []
    pfx = " ".join(cmds)
    (subcmds, subs, opts) = extract(pfx, out)
    for s in subcmds:
        if s.cmd not in cmds:
            r.extend(go(cmds + [s.cmd]))
    for s in subs:
        r += [(cmds, s)]
    for o in opts:
        r += [(cmds, o)]
    return r

def main():
    if len(argv) < 2:
        print("Usage: ./extract-abbrevs.py COMMAND")
        return

    everything = sorted(go(argv[1:]), key=lambda x: len("".join(x[0])), reverse=True)
    for (_, thing) in everything:
        print(thing)

if __name__ == "__main__":
    main()
