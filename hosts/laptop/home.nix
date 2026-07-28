{
  imports = [
    ./modules/home-manager/default.nix
    ../../modules/home-manager/default.nix
  ];
  home = {
    username = "lop1k";
    homeDirectory = "/home/lop1k";
    stateVersion = "25.11";
  };
  xdg.autostart.enable = true;
}
