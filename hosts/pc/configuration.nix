{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./modules/nixos/default.nix
    ../../modules/nixos/default.nix
    ./hardware-configuration.nix
    inputs.nix-gaming.nixosModules.platformOptimizations
  ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    users = {
      lop1k = import ./home.nix;
      root = {
        imports = [
          ../../modules/home-manager/nixvim.nix
          ../../modules/home-manager/bash.nix
        ];
        home.stateVersion = "25.11";
      };
    };
  };

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    kernelParams = [
      "nvidia-drm.modeset=1"
      "video=HDMI-A-1:1920x1080@60"
    ];
  };

  networking = {
    hostName = "pc";
    networkmanager.enable = true;
  };

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "uk_UA.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  console.keyMap = "ua-utf";
  console.font = "LatArCyrHeb-16";

  users.users.lop1k = {
    isNormalUser = true;
    description = "lop1k";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    #packages = with pkgs; [
    #      tree
    #];
  };
  nixpkgs.config.allowUnfree = true;
  users.defaultUserShell = pkgs.zsh;
  security = {
    sudo.enable = false;
    doas = {
      enable = true;
      extraRules = [
        {
          users = [ "lop1k" ];
          keepEnv = true;
          persist = true;
        }
      ];
    };
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
    __GL_GSYNC_ALLOWED = "1";
    __GL_VRR_ALLOWED = "1";
  };

  # GRAPHICS
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    nvidia = {
      open = true;
      modesetting.enable = true;
    };
  };

  # FIREWALL
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      #      8888
      #Localsend
      63317

      #Syncthing
      43521
      8384
    ];
    allowedUDPPorts = [
      #Localsend
      63317

      #Syncthing
      43521
      21027
    ];
  };

  system.stateVersion = "25.05";

}
