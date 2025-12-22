{ config, pkgs, ... }:

{
  imports = [
    ./apps/fonts.nix
    ./apps/packages.nix
    ./apps/programs.nix
    ./apps/scripts.nix
  ];
}
