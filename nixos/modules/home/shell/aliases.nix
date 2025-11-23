{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    bat = "bat --color=always --theme=base16 --style=plain";
    c = "clear";
    grep = "rg";
    k = "kill";
    ll = "eza --icons -lh";
    lla = "eza --icons -lha";
    ls = "eza --icons";
    lsa = "eza --icons -a";
    nv = "nvim";
    pk = "pkill";
    v = "nvim";
    vim = "nvim";
    "nix-shell" = "nix-shell --run $SHELL";
    yazi = "yz";
    zlj = "zellij";
  };
}
