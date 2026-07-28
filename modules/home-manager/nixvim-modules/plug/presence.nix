{
  programs.nixvim.plugins.presence = {
    enable = true;
    settings = {
      auto_update = true;
      main_image = "neovim";
      neovim_image_text = "nixvim<--(o_0)";
      editing_text = "Lop1k in %s";
      enable_line_number = true;
    };
  };
}
