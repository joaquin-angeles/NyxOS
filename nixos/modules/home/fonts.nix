{ config, pkgs, ... }:

{
  # Font configurations
  fonts.fontconfig.enable = true;
  fonts.fontconfig.defaultFonts = {
    emoji = [ "Noto Color Emoji" ];
    monospace = [ "JetBrainsMono Nerd Font Mono" ];
    sansSerif = [ "Inter" ];
    serif = [ "Times New Roman" ];
  };
}
