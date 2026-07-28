{
  pkgs,
  lib,
  ...
}:
{
  programs.zsh = {
    history.size = 200000;

    initContent = lib.mkBefore ''
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi

      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
          [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

       if [[ -o interactive ]] && [ -z "$TMUX" ] && [ -n "$DISPLAY" ] && [ -t 0 ]; then
        tmux attach-session -t default || tmux new-session -s default
      fi
    '';
  };
}
