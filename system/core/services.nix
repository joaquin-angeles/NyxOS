{ config, lib, pkgs, ... }:

{
    imports = [
        ./services/f2b.nix
        ./services/flatpak.nix
        ./services/networking.nix
        ./services/nftables.nix
        ./services/gvfs.nix
        ./services/polkit.nix
        ./services/zerotier.nix
    ];
}
