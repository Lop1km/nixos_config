{
  lib,
  pkgs,
  config,
  ...
}:
{
  programs.nixvim.plugins = {
    lint = {
      enable = true;
      #      lazyLoad.settings.event = "DeferredUIEnter";

      lintersByFt = {
        sh = [ "shellcheck" ];
        bash = [ "shellcheck" ];
        zsh = [ "shellcheck" ];
        nix = [
          "nix"
          "deadnix"
        ]
        ++ lib.optionals (!config.programs.nixvim.lsp.servers.statix.enable) [ "statix" ];
        c = [ "clangtidy" ];
        cpp = [ "clangtidy" ];
        haskell = [ "hlint" ];
        python = [ "ruff" ];
        markdown = [ "markdownlint" ];
        rust = [ "clippy" ];
        nim = [ "nimpretty" ];
      };

      linters = {
        shellcheck = {
          cmd = lib.getExe pkgs.shellcheck;
        };
        deadnix = {
          cmd = lib.getExe pkgs.deadnix;
        };
        statix = {
          cmd = lib.getExe pkgs.statix;
        };
        golangcilint = {
          cmd = lib.getExe pkgs.golangci-lint;
        };
        clippy = {
          cmd = lib.getExe pkgs.clippy;
        };
      };
    };
  };
}
