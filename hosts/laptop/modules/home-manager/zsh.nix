{
  programs.zsh = {
    history.size = 20000;
    initContent = ''
      if [ -z "$TMUX" ] && [ -n "$DISPLAY" ]; then
        tmux attach-session -t default || tmux new-session default
      fi
    '';
  };
}
