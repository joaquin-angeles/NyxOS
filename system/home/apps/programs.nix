{ config, pkgs, ... }:

{
  # Lutris
  programs.lutris = {
    enable = true;
    protonPackages = with pkgs; [ unstable.proton-ge-bin ];
    extraPackages = with pkgs; [
      gamemode
      gamescope
      mangohud
      umu-launcher
    ];
  };

  # Rofi
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
  };

  programs.nh.enable = true; # NH
}
