{ pkgs, ... }:

{
  # User packages
  home.packages = with pkgs; [
    bat
    btop
    cliphist
    eza
    file-roller
    foot
    grim
    hyprlock
    hyprpicker
    hyprsunset
    imv
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    lazygit
    libnotify
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    mako
    mpv
    neovim
    nitch
    ripgrep
    stow
    unstable.hyprshot
    unstable.impala
    unstable.swayosd
    unstable.wiremix
    waybar
    wbg
    yazi
    zellij
    zsh-powerlevel10k
  ];
}
