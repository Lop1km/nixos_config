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
        bash = [ "shellcheck" ];
        c = [ "clangtidy" ];
        cpp = [ "clangtidy" ];
        # haskell = [ "hlint" ];
        kotlin = [ "detekt" ];
        lua = [ "selene" ];
        markdown = [ "markdownlint" ];
        # nim = [ "nimpretty" ];
        nix = [
          "nix"
          "deadnix"
        ]
        ++ lib.optionals (!config.programs.nixvim.lsp.servers.statix.enable) [ "statix" ];
        python = [ "ruff" ];
        rust = [ "clippy" ];
        sh = [ "shellcheck" ];
        zsh = [ "shellcheck" ];
        zig = [ "zls" ];
      };

      linters = {
        clippy = {
          cmd = lib.getExe pkgs.clippy;
        };
        deadnix = {
          cmd = lib.getExe pkgs.deadnix;
        };
        #golangcilint = {
        #cmd = lib.getExe pkgs.golangci-lint;
        #};
        selene = {
          cmd = lib.getExe pkgs.selene;
        };
        shellcheck = {
          cmd = lib.getExe pkgs.shellcheck;
        };
        statix = {
          cmd = lib.getExe pkgs.statix;
        };
      };
    };
  };
}
