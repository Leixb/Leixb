{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      lib = pkgs.lib;
    in rec {
      devShell = with pkgs;
        mkShellNoCC {
          name = "grip";
          buildInputs = [
            python3.pkgs.grip
            alejandra
          ];

          shellHook = let
            GIT_HOOKS = with pkgs;
              (symlinkJoin {
                name = "git-hooks";
                paths = [
                  (writeShellScriptBin "pre-commit" ''
                    ${alejandra}/bin/alejandra . --check
                  '')
                ];
              })
              + "/bin";
          in "git config --local core.hooksPath ${GIT_HOOKS}";
        };

      packages.README = pkgs.callPackage ./. {};

      defaultPackage = packages.README;
    });
}
