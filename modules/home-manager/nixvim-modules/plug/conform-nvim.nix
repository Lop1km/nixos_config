{
  pkgs,
  ...
}:
{
  programs.nixvim = {
    extraPackages = with pkgs; [
      nixfmt
      clang-tools
      rustfmt
      nph
      stylua
      ktfmt
    ];
    plugins.conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lspFallback = true;
          timeoutMs = 500;
        };
        notify_on_error = true;

        formatters_by_ft = {
          c = [ "clang-format" ];
          cpp = [ "clang-format" ];
          kotlin = [ "ktfmt" ];
          lua = [ "stylua" ];
          markdown = [ "prettier" ];
          # nim = [ "nph" ];
          nix = [ "nixfmt" ];
          rust = [ "rustfmt" ];
          sh = [ "shfmt" ];
          zig = [ "zigfmt" ];
        };
        formatters = {
          clang-format = {
            prepend_args = [
              "--style={BasedOnStyle: LLVM, IndentWidth: 8, UseTab: Never, TabWidth: 8, ColumnLimit: 100}"
            ];
          };
          #          rustfmt = {
          #            args = [
          #  "--config"
          #  "chain_width=0"
          #];
          #};
        };
      };
    };
  };
}
