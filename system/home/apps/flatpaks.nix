{ config, pkgs, inputs, ... }:

{
    services.flatpak = {
        enable = true;

        # Installed flatpaks
        packages = [
            "app.zen_browser.zen" # Default browser
            "com.github.tchx84.Flatseal" # Flatpak settings
            "com.obsproject.Studio" # Screen recording software
            # "com.usebottles.bottles" # Windows applications
            "com.vysp3r.ProtonPlus" # Games compat tool
            "com.spotify.Client" # Music streaming
            "net.lutris.Lutris"
            "dev.vencord.Vesktop" # Discord / Communication
            "org.chromium.Chromium" # Progressive web apps
            "org.libreoffice.LibreOffice" # Office suite
            "org.gimp.GIMP" # Photo editing
        ];

        update.onActivation = true; # Update every rebuild
        update.auto.enable = true; # Scheduled updating
    };
}
