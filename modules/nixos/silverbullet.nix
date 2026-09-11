{ pkgs, ... }:
{
  services.silverbullet = {
    enable = true;
    package = pkgs.silverbullet; # default
    listenAddress = "127.0.0.1"; # default
    listenPort = 3000; # default
    user = "lop1k";
    spaceDir = "/home/lop1k/silverbullet";
    openFirewall = false; # default
  };
}
