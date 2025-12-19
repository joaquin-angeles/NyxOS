{
  description = "Joaquin's NixOS";

  # Inputs (repositories)
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11"; # Main branch
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Unstable branch

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Integrations
  outputs = inputs@{ self, nixpkgs, unstable, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.home = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix

          # Home manager
          home-manager.nixosModules.home-manager
          {
            nixpkgs.config.allowUnfree = true;

            home-manager = {
              backupFileExtension = "bak";
              users.joaquin = import ./home.nix;
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
            };
          }

          # Overlays
          ({ pkgs, ... }: {
            nixpkgs.overlays = [
              (final: prev: {
                unstable = import unstable {
                  system = pkgs.system;
                };
              })
            ];
          })
        ];
      };
    };
}
