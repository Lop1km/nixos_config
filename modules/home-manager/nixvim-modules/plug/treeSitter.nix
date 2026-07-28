{ pkgs, ... }:
{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings = {
      indent = {
        enable = true;
        #   disable = [ "nix" ];
      };
      highlight = {
        enable = true;
      };
    };
    folding.enable = false;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
