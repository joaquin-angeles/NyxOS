{ config, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      inter
      nerd-fonts.jetbrains-mono
      nerd-fonts.meslo-lg
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji-blob-bin
    ];
  };
}
