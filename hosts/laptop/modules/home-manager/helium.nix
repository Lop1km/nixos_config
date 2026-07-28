{
  config,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.helium-flake.homeModules.default
  ];

  programs.helium = {
    enable = true;
  };
}
