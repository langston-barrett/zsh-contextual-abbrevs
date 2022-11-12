with import <nixpkgs> { };

mkShell {
  buildInputs = [ ttygif ttyrec ];
}
