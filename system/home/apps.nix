{ config, pkgs, ... }:

{
  imports = [ ./apps/*.nix ]; # Cleanly import packages
}
