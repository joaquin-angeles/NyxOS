{ inputs, config, pkgs,  ... }:

{
    # Cursor theming
    home.pointerCursor = {
        gtk.enable = true;
        x11.enable = true; # XWayland cursor theming
        package = pkgs.bibata-cursors; # Cursor package
        name = "Bibata-Modern-Ice"; # Cursor theme
        size = 24;
    };

    # Icon theme
    home.file."Pictures/backgrounds".source = ../../../backgrounds;

    # GTK theming
    gtk = {
        enable = true;
        theme = {
            name = "Gruvbox-Dark";
            package = pkgs.gruvbox-gtk-theme;
        };

        iconTheme = {
            name = "Gruvbox-Plus-Dark";
            package = pkgs.gruvbox-plus-icons;
        };

        # Enable dark theme
        gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
        gtk4.extraConfig.gtk-application-prefer-dark-theme = true;
    };

    # GTK4 dark theme
    dconf = {
        enable = true;
        settings = {
            "org/gnome/desktop/interface" = {
                "color-scheme" = "prefer-dark";
            };
        };
    };

    # Qt theming
    qt = {
        enable = true;
        platformTheme.name = "qtct";
        style = {
            name = "kvantum-dark";
        };
    };

    # Overwritten config files
    xdg.configFile."gtk-4.0/settings.ini".force = true;
    xdg.configFile."gtk-4.0/assets".source = "${pkgs.gruvbox-gtk-theme}/share/themes/Gruvbox-Dark/gtk-4.0/assets";
    xdg.configFile."gtk-4.0/gtk.css".source = "${pkgs.gruvbox-gtk-theme}/share/themes/Gruvbox-Dark/gtk-4.0/gtk.css";
    xdg.configFile."gtk-4.0/gtk-dark.css".source = "${pkgs.gruvbox-gtk-theme}/share/themes/Gruvbox-Dark/gtk-4.0/gtk-dark.css";

    # Flatpak theming
    home.activation.flatpakFontInit = config.lib.dag.entryAfter ["writeBoundary"] ''
        $DRY_RUN_CMD mkdir -p $HOME/.local/share/fonts
        $DRY_RUN_CMD ln -sfn /run/current-system/sw/share/X11/fonts/* $HOME/.local/share/fonts/
        $DRY_RUN_CMD ${pkgs.fontconfig}/bin/fc-cache -fv
    '';

    home.activation.flatpakGtkTheme = config.lib.dag.entryAfter ["writeBoundary"] ''
        $DRY_RUN_CMD mkdir -p $HOME/.local/share/themes
        $DRY_RUN_CMD ln -sfn ${pkgs.gruvbox-gtk-theme}/share/themes/* $HOME/.local/share/themes/
    '';
}
