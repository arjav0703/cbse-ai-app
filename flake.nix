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
        electron = pkgs.electron_28;
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "cbse-ai-app";
          version = "0.1.0";
          src = ./.;
          buildInputs = [
            pkgs.nodejs
            electron
            pkgs.makeWrapper
          ];
          # Install npm dependencies
          installPhase = ''
            export HOME=$TMPDIR
            npm install --production
            mkdir -p $out/bin
            makeWrapper ${electron}/bin/electron $out/bin/cbse-ai-app \
              --add-flags $src
          '';
        };
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.nodejs
            electron
          ];
        };
      }
    );
}
