{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      doas = "doas ";
      ff = "fastfetch";
      lsd = "lsd --header --group-directories-first ";
      mv = "mv -v ";
      v = "nvim";
      ".." = "z .. ";
    };
  };
}
