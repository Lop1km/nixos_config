{
  pkgs,
  lib,
  ...
}:
{
  programs.nixvim.lsp = {
    servers = {
      nixd = {
        enable = true;
        config =
          let
            flake = ''(builtins.getFlake "github:elythh/flake")'';
            flakeNixvim = ''(builtins.getFlake "github:elythh/nixvim")'';
          in
          {
            nixpkgs = {
              expr = "import ${flake}.inputs.nixpkgs";
            };
            formatting = {
              command = [ "${lib.getExe pkgs.nixfmt}" ];
            };
            options = {
              nixos.expr = "${flake}.nixosConfigurations.grovtender.options";
              nixvim.expr = "${flakeNixvim}.packages.${pkgs.stdenv.hostPlatform.system}.default.options";
            };
          };
      };
      clangd = {
        enable = true;
        config = {
          formatting = {
            command = [ "${lib.getExe' pkgs.clang-tools "clang-format"}" ];
          };
        };
      };
      rust_analyzer = {
        enable = true;
      };
      nimls = {
        enable = true;
        package = pkgs.nimlangserver;
      };
      pylsp.enable = true;
      bashls.enable = true;
    };
  };
}
