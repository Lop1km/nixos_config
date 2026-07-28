{
  programs.nixvim.autoCmd = [
    {
      event = "InsertEnter";
      command = "norm zz";
    }
    {
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }
    {
      event = [ "FileType" ];
      pattern = "TelesopePrompt";
      command = "inoremap <buffer><silent> <Esc> <Esc>:close!<CR>";
    }
    {
      event = [ "FileType" ];
      pattern = "snacks_picker_input";
      command = "inoremap <buffer><silent> <Esc> <Esc>:close!<CR>";
    }
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en, ua";
    }
    {
      event = "TextYankPost";
      pattern = "*";
      command = "lua vim.highlight.on_yank{timeout=500}";
    }
    {
      event = "FileType";
      pattern = [
        "gitcommit"
        "gitrebase"
      ];
      command = "startinsert | 1";
    }
  ];
}
