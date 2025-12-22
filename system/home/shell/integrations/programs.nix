{ config, pkgs, ... }:

{
  # fzf integration
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Nix output monitor
  programs.nix-your-shell = {
    enable = true;
    enableZshIntegration = true;
    nix-output-monitor.enable = true;
  };

  # Zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
