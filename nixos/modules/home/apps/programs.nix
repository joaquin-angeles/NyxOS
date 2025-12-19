{ config, pkgs, ... }:

{
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.home-manager.enable = true; # Home Manager

  # NH
  programs.nh.enable = true;
  programs.nix-your-shell.nix-output-monitor.enable

  # rofi
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
  };

  # zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
