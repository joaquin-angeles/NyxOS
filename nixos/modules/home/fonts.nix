{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true; # Enable fontconfig

  # Default fonts
  fonts.fontconfig.defaultFonts = {
    sansSerif = [ "Inter" ];
    serif = [ "Serif" ];
    emoji = [ "Noto Color Emoji" ];
    monospace = [ "JetBrains Mono Nerd Font Mono" ];
  };
}
