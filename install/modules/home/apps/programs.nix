{ config, pkgs, ... }:
{
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # NH
  programs.nh.enable = true;
  programs.nix-your-shell = {
    enable = true;
    enableZshIntegration = true;
    nix-output-monitor.enable = true;
  };

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
