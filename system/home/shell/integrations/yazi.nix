{ config, pkgs, ... }:

{
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
                ratio = [ 1 4 3 ];
                title_format = "user@nixos-btw: {cwd}";
                show_symlink = true;
            };
            opener = {
                edit = [
                    { run = ''nvim "$@"''; block = true; desc = "Open in Neovim"; }
                ];
                play = [
                    { run = ''mpv "$@"''; orphan = true; desc = "Play Video"; }
                ];
                view = [
                    { run = ''imv "$@"''; orphan = true; desc = "View Image"; }
                ];
            };
            open = {
                rules = [
                    { name = "*.mkv"; use = "play"; }
                    { name = "*.mp4"; use = "play"; }
                    { name = "*.png"; use = "view"; }
                    { name = "*.jpg"; use = "view"; }
                    { name = "*.jpeg"; use = "view"; }
                ];
            };
        };
        initLua = ../../../../yazi/init.lua;
        plugins = {
            chmod = pkgs.yaziPlugins.chmod;
            full-border = pkgs.yaziPlugins.full-border;
            smart-enter = pkgs.yaziPlugins.smart-enter;
            yatline = pkgs.yaziPlugins.yatline;
        };

        extraPackages = with pkgs; [
            ffmpegthumbnailer
            ueberzugpp
            file
            poppler
        ];
    };
}
