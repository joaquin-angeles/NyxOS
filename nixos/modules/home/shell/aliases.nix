{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    bat = "bat --color=always --theme=base16";
    cat = "bat --color=always --theme=base16";
    grep = "rg";
    ll = "eza --icons -lh";
    lla = "eza --icons -lha";
    ls = "eza --icons";
    lsa = "eza --icons -a";
    vim = "nvim";
    yazi = "yz";
    zlj = "zellij";
  };
}
