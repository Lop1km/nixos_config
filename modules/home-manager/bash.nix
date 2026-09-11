{
  programs.bash = {
    enable = true;
    shellAliases = {
      doas = "doas ";
      ff = "fastfetch";
      lg = "lazygit";
      lsd = "lsd --header --group-directories-first ";
      mv = "mv -v ";
      v = "nvim";
      ".." = "z .. ";
    };
    historyControl = [
      "erasedups"
      "ignorespace"
    ];
    historyFileSize = 20000;
    historySize = 20000;
  };
}
