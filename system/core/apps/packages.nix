{ config, lib, pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
        brightnessctl
        gtk3
        gtk4
        nautilus
        polkit_gnome
        unstable.bluetui
        wl-clipboard
        zenity
    ];
}
