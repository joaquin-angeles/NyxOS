{ config, lib, pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    brightnessctl
    nautilus
    lutris
    unstable.bluetui
    wl-clipboard
    xdg-user-dirs
    zenity
  ];
}
