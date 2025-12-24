{ config, lib, pkgs, ... }:

{
    powerManagement.powertop.enable = true; # Powertop

    # Auto CPU frequency
    services.auto-cpufreq = {
        enable = true;
        settings = {
            battery = {
                governor = "powersave";
                turbo = "never";
            };
            charger = {
                governor = "performance";
                turbo = "auto";
            };
        };
    };

    services.power-profiles-daemon.enable = false; # Disable PPD

    environment.systemPackages = with pkgs; [ powertop ]; # Extra packages

    services.upower.enable = true; # Upower
}
