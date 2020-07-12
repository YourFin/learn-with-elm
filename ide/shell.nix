{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghcjs" }:

#with pkgs;

#mkShell {
#  buildInputs = [
#    haskell.compiler.${compiler}.ghcWithPackages (hpkgs: with hpkgs: [
#      text
#    ]);
#    nodejs-13_x
#  ];
#}

(import ./default.nix { inherit nixpkgs compiler; }).env
