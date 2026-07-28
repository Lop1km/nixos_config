{ inputs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./nixvim-modules/default.nix
  ];
  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;
    #    nixpkgs.pkgs = pkgs;
    nixpkgs.source = inputs.nixpkgs;
  };
}
