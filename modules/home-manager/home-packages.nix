{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Terminal
    comma
    cpufetch
    dysk
    fastfetch
    fd
    ffmpeg
    (gpufetch.override { cudaSupport = true; })
    lazygit
    libqalculate
    lsd
    openssl
    p7zip
    tealdeer
    unzip
    w3m
    wget
    zip

    # font
    nerd-fonts.jetbrains-mono

    # notify
    dunst
    libnotify

    # clipboard
    wl-clipboard

    # GUI
    # (blender.override { cudaSupport = true; })
    (obs-studio.override { cudaSupport = true; })
    blockbench
    grim
    krita
    lagrange
    localsend
    materialgram
    pcmanfm-qt
    slurp
    swappy
    tenacity
    vesktop

    # games
    mangohud
    prismlauncher

    gruvbox-kvantum

    # another
    f3d
    ffmpegthumbnailer
    librsvg
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
  ];
}
