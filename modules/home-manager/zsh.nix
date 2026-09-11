{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
    defaultKeymap = "emacs";

    plugins = [
      {
        name = "fzf-tab";
        src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
      }
    ];

    shellAliases = {
      doas = "doas ";
      ff = "fastfetch";
      lg = "lazygit";
      lsd = "lsd --header --group-directories-first ";
      mv = "mv -v ";
      v = "nvim";
      ".." = "z .. ";
    };
  };
}
