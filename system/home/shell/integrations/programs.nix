{ config, pkgs, ... }:

{
  # Bat
  programs.bat = {
    enable = true;
    config = {
      theme = "base16";
      style = "plain";
    };
  };

  # eza
  programs.eza = {
    enable = true;
    icons = "always"; # Always show icons
  };

  # FD
  programs.fd = {
    enable = true;
    hidden = true;
    extraOptions = [ "--color=always" ];
  };

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
  
  # Ripgrep
  programs.ripgrep = {
    enable = true;
    arguments = [ "--hidden" "--glob" "!.git/*" ];
  };

  # Zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
