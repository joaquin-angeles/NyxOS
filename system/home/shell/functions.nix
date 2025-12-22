{ config, pkgs, ... }:

{
  programs.zsh.initContent = ''
    # Cursor and title configuration
    precmd() {
      printf '\e[1 q'
      print -Pn "\e]0;%n@%m: %~\a"
    }

    # Fetch
    if command -v fastfetch >/dev/null 2>&1; then
      fastfetch
      echo ""
    fi

    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme # Prompt

    # P10K configuration
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

    # Better CD
    cd() {
      z "$@" && eza --icons
    }

    # Better FZF (faster preview)
    fzf() {
      command fzf --preview '
        if [ -d {} ]; then
          eza --icons -lh --color=always {} || ls -lh {}
        else
          bat --color=always --theme=base16 --style=plain --paging=never {}
        fi
      '
    }

    # Better Yazi
    function yz() {
      local tmp cwd
      tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
      yazi "$@" --cwd-file="$tmp"
      IFS= read -r cwd < "$tmp"
      if [[ -n "$cwd" && "$cwd" != "$PWD" ]]; then
        builtin cd -- "$cwd" && eza
      fi
      rm -f -- "$tmp"
    }
  '';
}
