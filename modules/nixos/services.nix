{
  services = {
    xserver = {
      xkb = {
        layout = "ua";
        variant = "";
      };
      videoDrivers = [ "nvidia" ];
    };
    openssh.enable = true;
  };
}
