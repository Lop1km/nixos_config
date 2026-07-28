{
  programs.bash = {
    enable = true;
    shellAliases = {
      doas = "doas ";
      v = "nvim";
      ".." = "z .. ";
      ga = "git add -A";
    };
    historyControl = [
      "erasedups"
      "ignorespace"
    ];
    historyFileSize = 20000;
    historySize = 20000;
  };
}
