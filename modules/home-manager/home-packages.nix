{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Terminal
    w3m
    fastfetch
    cpufetch
    (gpufetch.override { cudaSupport = true; })
    libqalculate
    dysk
    lazygit
    zip
    unzip
    ffmpeg
    wget
    openssl
    fd
    p7zip
    lsd
    comma

    # xdg
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # font
    nerd-fonts.jetbrains-mono

    # notify
    libnotify
    dunst

    # clipboard
    wl-clipboard

    # GUI
    vesktop
    materialgram
    slurp
    grim
    pcmanfm-qt
    localsend
    (obs-studio.override { cudaSupport = true; })
    krita
    blockbench
    swappy
    # (blender.override { cudaSupport = true; })
    lagrange
    tenacity

    # games
    prismlauncher
    mangohud

    gruvbox-kvantum

    # another
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    f3d
    ffmpegthumbnailer
    librsvg
  ];
}
