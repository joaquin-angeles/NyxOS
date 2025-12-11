{ config, pkgs, ... }:

{
  fonts.enableDefaultPackages = true;
  font.packages = with pkgs; [
    corefonts
    inter
    nerd-fonts.jetbrains-mono
    nerd-fonts.meslo-lg
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji-blob-bin
  ];
};
