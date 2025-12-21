{ config, lib, pkgs, ... }:

{
  services.auto-cpufreq.enable = true; # Auto CPU frequency

  services.power-profiles-daemon.enable = false; # Disable PPD

  environment.systemPackages = with pkgs; [ acpi ]; # ACPI

  # TLP
  services.tlp.enable = true;
  services.tlp.settings = {
    CPU_SCALING_GOVERNOR_ON_AC = "";
    CPU_SCALING_GOVERNOR_ON_BAT = "";
    CPU_SCALING_DRIVER = "";
  };

  services.upower.enable = true; # Upower
}
