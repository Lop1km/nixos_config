let
  mainMod = "SUPER";
  secondMod = "SHIFT";
  appMod = "ALT";

  terminalEmulator = "foot";
  mainBrowser = "helium";
in
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "${mainMod} ${secondMod}, Q, exec, ${terminalEmulator}"

      "${appMod}, space, exec, pkill -x wmenu-run || wmenu-run"
      "${mainMod} ${appMod}, H, exec, ${mainBrowser}"
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
