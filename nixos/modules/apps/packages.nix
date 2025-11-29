{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    blueman
    brightnessctl
    nautilus
    wl-clipboard
    xdg-user-dirs
    zenity
  ];
}
