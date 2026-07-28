{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wmenu
    waybar
  ];
}
