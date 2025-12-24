{ config, pkgs, lib, ... }:

{
    networking = {
        hostName = "nixos-btw"; # Define a hostname
        wireless.iwd.enable = true; # iwd > wpa_supplicant
    };
}
