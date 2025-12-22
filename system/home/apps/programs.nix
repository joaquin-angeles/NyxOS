{ config, pkgs, ... }:
  {
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Lutris
  programs.lutris = {
    enable = true;
    protonPackages = with pkgs; [ unstable.proton-ge-bin ];
    extraPackages = with pkgs; [
      gamemode
      gamescope
      mangohud
      umu-launcher
    ];
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

  # Yazi file manager
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    theme = {
      filetype = {
        rules = [
          { mime = "inode/directory"; fg = "blue"; bold = true; }
          { name = "*"; is = "orphan"; fg = "red"; }
          { name = "*"; is = "link"; fg = "cyan"; }
          { name = "*/"; is = "orphan"; fg = "red"; }
          { name = "*/"; is = "link"; fg = "cyan"; }
        ];
      };
      initLua = ../../../yazi/init.lua;
      plugins = {
        chmod with pkgs; = yaziPlugins.chmod;
        full-border with pkgs; = yaziPlugins.full-border;
        smart-enter with pkgs; = yaziPlugins.smart-enter;
      };
    };

    # zoxide
    programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  }
