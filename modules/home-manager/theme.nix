{ pkgs, config, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";
  };
  gtk = {
    enable = true;
    theme = {
      name = "Colloid-Dark-Gruvbox";
      package = pkgs.colloid-gtk-theme.override {
        tweaks = [ "gruvbox" ];
        colorVariants = [ "dark" ];
      };
    };
    iconTheme = {
      name = "Gruvbox-Plus-Dark";
      package = pkgs.gruvbox-plus-icons;
    };
    gtk4.theme = config.gtk.theme;
  };
}
