let
  mainMod = "SUPER";
  secondMod = "SHIFT";
  appMod = "ALT";

  terminalEmulator = "alacritty";
  mainBrowser = "firefox";
  secondBrowser = "chromium";
in
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "${mainMod} ${secondMod}, Q, exec, ${terminalEmulator}"
      "${appMod}, space, exec,  noctalia msg panel-toggle launcher"
      "${mainMod} ${appMod}, K, exec, 'noctalia msg panel-toggle clipboard"
      "${mainMod} ${appMod}, F, exec, ${mainBrowser}"
      "${mainMod} ${appMod}, H, exec, ${secondBrowser}"
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
