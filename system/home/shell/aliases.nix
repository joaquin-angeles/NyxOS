{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    cat = "bat";
    grep = "rg";
    ll = "eza  -lh";
    lla = "eza -lha";
    ls = "eza";
    lsa = "eza -a";
    vim = "nvim";
    yazi = "yz";
    zlj = "zellij";
  };
}
