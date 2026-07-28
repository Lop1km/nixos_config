{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod shift, Q, exec, foot"

      "alt, space, exec, pkill -x wmenu-run || wmenu-run"
      "$mod alt, H, exec, helium"
    ];
    exec-once = [
      "waybar"
    ];
    animations.enabled = false;
    general = {
      gaps_in = 0;
      gaps_out = 0;
    };
  };
}
