{ pkgs, inputs, ... }:

{
    services.flatpak = {
        enable = true;

        packages = [
            "com.github.tchx84.Flatseal"
            "com.obsproject.Studio"
            "com.vysp3r.ProtonPlus"
            "dev.vencord.Vesktop"
            "org.chromium.Chromium"
            "org.gtk.Gtk3theme.adw-gtk3-dark"
        ];

        update.onActivation = true;
        update.auto.enable = true;
    };
}
