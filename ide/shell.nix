{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    ghc
    nodejs-13_x
  ];
}
