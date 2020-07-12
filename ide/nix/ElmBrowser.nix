{ mkDerivation, base, ghcjs-commonjs, stdenv, text }:
mkDerivation {
  pname = "ElmInBrowser";
  version = "0.0.1";
  src = ./..;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ghcjs-commonjs text ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
