{ config, pkgs, ... }:

{
  # User configuration
  home.username = "joaquin";
  home.homeDirectory = "/home/joaquin";
  home.stateVersion = "25.05";

  # Cursor theming
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true; # XWayland cursor theming
    package = pkgs.bibata-cursors; # Cursor package
    name = "Bibata-Modern-Classic"; # Cursor theme
    size = 24;
  };

  # Qt theming
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  # Modules
  imports = [
    # Configurations
    ./dotfiles.nix
    ./modules/home/environment.nix # Environment variables
    ./modules/home/apps/fonts.nix # Fonts

    # Packages
    ./modules/home/apps/packages.nix
    ./modules/home/apps/programs.nix

    # Zsh
    ./modules/home/shell/base.nix
    ./modules/home/shell/aliases.nix
    ./modules/home/shell/functions.nix
    # ./modules/home/shell/keybinds.nix
  ];
}
