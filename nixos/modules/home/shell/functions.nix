{ config, pkgs, ... }:

{
  programs.zsh.initContent = ''
    # Cursor and title configuration
    precmd() {
      printf '\e[1 q'
      local term
      term=$(ps -o comm= -p $(ps -o ppid= -p $$))
      print -Pn "\e]0;%~ | $term\a"
    }

    # Fetch
    if command -v fastfetch >/dev/null 2>&1; then
      fastfetch
      echo ""
    fi

    # Prompt
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

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

    # Better yazi
    yz() {
      local tmp
      tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
      yazi "$@" --cwd-file="$tmp"
      if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -n "$dir" ] && [ -d "$dir" ]; then
          cd "$dir" || return 1
        fi
      fi
    }
  '';
}
