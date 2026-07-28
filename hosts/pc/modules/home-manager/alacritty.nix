{ lib, ... }:
{
  programs.alacritty = {
    enable = true;
    theme = "gruvbox_dark";
    settings = {
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = lib.mkForce "Bold";
        };
      };
      scrolling = {
        history = 20000;
      };
    };
  };
}
