{ config, pkgs, ... }:

{
  # Hardware configurations
  imports = [
    ./hardware/laptop.nix # Laptop configurations
    ./hardware/nvidia.nix # Proprietary Nvidia drivers
  ];

  # Boot options
  boot.kernelModules = [ "zram" ];
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  # Audio server configuration
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  # Connectivity configurations
  hardware.bluetooth.enable = true; # Bluetooth
  services.libinput.enable = true; # Mouse/trackpad management

  # Graphics settings
  hardware.graphics = {
    enable = true; 
    enable32Bit = true;
  };
}
