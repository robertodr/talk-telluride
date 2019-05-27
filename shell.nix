let
  hostPkgs = import <nixpkgs> {};
  nixpkgs = (hostPkgs.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs-channels";
    # SHA for latest commit on 2019-05-26 for the nixos-19.03 branch
    rev = "376981987177b7bd8448db268d04f41dde355f3b";
    sha256 = "1w1dg9ankgi59r2mh0jilccz5c4gv30a6q1k6kv2sn8vfjazwp9k";
  });
in
  with import nixpkgs {
    overlays = [(self: super:
      {
      }
    )];
  };

  stdenv.mkDerivation {
    name = "talk-telluride";
    buildInputs = [
      pipenv
    ];

    src = null;
    shellHook = ''
    SOURCE_DATE_EPOCH=$(date +%s)
    '';
  }
