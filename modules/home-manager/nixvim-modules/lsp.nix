{
  pkgs,
  lib,
  config,
  osConfig,
  ...
}:
{
  programs.nixvim.lsp = {
    servers = {
      bashls.enable = true;
      clangd = {
        enable = true;
        config = {
          formatting = {
            command = [ "${lib.getExe' pkgs.clang-tools "clang-format"}" ];
          };
        };
      };
      kotlin_language_server.enable = true;
      lua_ls.enable = true;
      # nimls = {
      #   enable = true;
      #   package = pkgs.nimlangserver;
      # };
      nixd = {
        enable = true;
        config =
          let
            flake = ''(builtins.getFlake "${config.home.homeDirectory}/flake")'';
            host = "${osConfig.networking.hostName}";
          in
          {
            nixpkgs = {
              expr = "import ${flake}.inputs.nixpkgs";
            };
            formatting = {
              command = [ "${lib.getExe pkgs.nixfmt}" ];
            };
            options = {
              nixos.expr = "${flake}.nixosConfigurations.${host}.options";
              home-manager.expr = "${flake}.nixosConfigurations.${host}.options.home-manager.users.type.getSubOptions [ ]";
            };
          };
      };
      pylsp.enable = true;
      rust_analyzer = {
        enable = true;
      };
      zls.enable = true;
    };
  };
}
