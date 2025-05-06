{
  description = "CBSE AI";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        electron = pkgs.electron_28; # TBD
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "cbse-ai";
          version = "0.1.1";
          src = ./.;
          buildInputs = [
            pkgs.nodejs
            electron
          ];
          installPhase = ''
            mkdir -p $out/bin
            makeWrapper ${electron}/bin/electron $out/bin/my-electron-app \
              --add-flags $src
          '';
        };
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.nodejs
            pkgs.yarn
            electron
          ];
        };
      }
    );
}
