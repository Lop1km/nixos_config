{ pkgs, ... }:
{
  programs = {
    gamemode.enable = true;
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
      extraPackages = with pkgs; [
        gamemode
        mangohud
        gamescope
      ];
      gamescopeSession.enable = true;
      localNetworkGameTransfers.openFirewall = true;
    #  platformOptimizations.enable = true;
      remotePlay.openFirewall = true;
    };
    xwayland.enable = true;
    zsh.enable = true;
  };
}
