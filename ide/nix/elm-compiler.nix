{ mkDerivation, ansi-terminal, ansi-wl-pprint, base, binary
, bytestring, containers, directory, edit-distance, file-embed
, filelock, filepath, ghc-prim, haskeline, HTTP, http-client
, http-client-tls, http-types, language-glsl, mtl, network, parsec
, process, raw-strings-qq, scientific, SHA, snap-core, snap-server
, stdenv, template-haskell, time, unordered-containers, utf8-string
, vector, zip-archive
}:
mkDerivation {
  pname = "elm";
  version = "0.19.1";
  src = ../vendor/elm-compiler;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    ansi-terminal ansi-wl-pprint base binary bytestring containers
    directory edit-distance file-embed filelock filepath ghc-prim
    haskeline HTTP http-client http-client-tls http-types language-glsl
    mtl network parsec process raw-strings-qq scientific SHA snap-core
    snap-server template-haskell time unordered-containers utf8-string
    vector zip-archive
  ];
  homepage = "https://elm-lang.org";
  description = "The `elm` command line interface";
  license = stdenv.lib.licenses.bsd3;
}
