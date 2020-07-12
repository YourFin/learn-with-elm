{ mkDerivation, base, containers, ghcjs-base, stdenv }:
mkDerivation {
  pname = "ghcjs-commonjs";
  version = "0.1.0.0";
  src = ../vendor/ghcjs-commonjs/ghcjs-commonjs;
  libraryHaskellDepends = [ base containers ghcjs-base ];
  homepage = "https://github.com/beijaflor-io/ghcjs-commonjs";
  description = "Better Haskell & JavaScript Interop with CommonJS for GHCJS";
  license = stdenv.lib.licenses.mit;
}
