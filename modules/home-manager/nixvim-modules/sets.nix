{ pkgs, ... }:
{
  programs.nixvim = {
    performance = {
      byteCompileLua = {
        enable = true;
        nvimRuntime = true;
        configs = true;
        plugins = true;
      };
    };
    clipboard = {
      register = "unnamedplus";

      providers = {
        wl-copy = {
          enable = true;
          package = pkgs.wl-clipboard;
        };
      };
    };
    diagnostic = {
      settings = {
        update_in_insert = true;
        severity_sort = true;
        float = {
          border = "rounded";
        };
        jump = {
          severity.__raw = "vim.diagnostic.severity.WARN";
        };
      };
    };
    opts = {
      number = true;
      relativenumber = true;
      cursorline = true;

      tabstop = 2;
      softtabstop = 2;
      showtabline = 0;
      expandtab = true;

      #      smartindent = true;
      #      shiftwidth = 2;

      wrap = true;
      breakindent = true;
      scrolloff = 10;
      signcolumn = "yes";
      termguicolors = true;

      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      undofile = true;
      swapfile = false;
      backup = false;
      autoread = true;

      splitbelow = true;
      splitright = true;
      mouse = "a";

      updatetime = 50;
      timeoutlen = 255;
      completeopt = [
        "menuone"
        "noselect"
        "noinsert"
      ];

      cmdheight = 0;
      showmode = false;

      encoding = "utf-8";
      fileencoding = "utf-8";
    };
  };
}
