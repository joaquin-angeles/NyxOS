{ inputs, config, pkgs,  ... }:

{
    # User configuration
    home.username = "user";
    home.homeDirectory = "/home/user";
    home.stateVersion = "25.05";

    # Modules
    imports = [
        # Configurations
        ./home/dotfiles.nix
        ./home/environment.nix # Environment variables

        # Apps
        ./home/apps.nix # Packages
        ./home/apps/theming.nix # Theming

        ./home/shell.nix # Shell configuration (zsh)
    ];
}
