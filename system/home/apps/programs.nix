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
    };
    keymap = {
      mgr.prepend_keymap = [
        {
          on = "c";
          run = "cancel_cut_copy";
          desc = "Cancel Cut/Copy";
        }
      ];
    };
    settings = {
      log = {
        enabled = false;
      };
      mgr = {
        show_hidden = false;
        sort_dir_first = true;
        ratio = [ 1 2 3 ];
        title_format = "{cwd}";
        show_symlink = false;
      };
    };
    initLua = ../../../yazi/init.lua;
    plugins = {
      chmod = pkgs.yaziPlugins.chmod;
      full-border = pkgs.yaziPlugins.full-border;
      smart-enter = pkgs.yaziPlugins.smart-enter;
    };
  };

  # zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
