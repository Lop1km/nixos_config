{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod shift, Q, exec, alacritty"

      "alt, space, exec,  noctalia msg panel-toggle launcher"
      "$mod alt, K, exec, noctalia msg panel-toggle clipboard"
      "$mod alt, F, exec, firefox"
      "$mod alt, H, exec, chromium"
    ];

    exec-once = [
      "noctalia"
      "keepassxc"
    ];

    animations = {
      enabled = true;
    };
  };
}
