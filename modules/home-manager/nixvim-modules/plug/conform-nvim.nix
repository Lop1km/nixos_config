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
          nix = [ "nixfmt" ];
          c = [ "clang-format" ];
          rust = [ "rustfmt" ];
          markdown = [ "prettier" ];
          nim = [ "nph" ];
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
