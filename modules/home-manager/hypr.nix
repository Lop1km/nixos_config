let
  mainMod = "SUPER";
  secondMod = "SHIFT";
  appMod = "ALT";
  fileManager = "pcmanfm-qt";
  discord = "vesktop";
  telegram = "materialgram";
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    settings = {
      decoration = {
        #      shadow_offset = "0 5";
        #      "col.shadow" = "rgba(00000099)";
      };

      bind = [

        # BASE
        "${mainMod} ${secondMod}, F, fullscreen, toggle"
        "${mainMod} ${secondMod}, C, killactive"
        "${mainMod} ${secondMod}, M, exit"
        "${mainMod} ${secondMod}, E, exec, ${fileManager}"
        "${mainMod} ${secondMod}, V, togglefloating"

        # MOVE
        "${mainMod}, H, movefocus, l"
        "${mainMod}, L, movefocus, r"
        "${mainMod}, K, movefocus, u"
        "${mainMod}, J, movefocus, d"

        # SPACE
        "${mainMod}, 1, workspace, 1"
        "${mainMod}, 2, workspace, 2"
        "${mainMod}, 3, workspace, 3"
        "${mainMod}, 4, workspace, 4"
        "${mainMod}, 5, workspace, 5"
        "${mainMod}, 6, workspace, 6"
        "${mainMod}, 7, workspace, 7"
        "${mainMod}, 8, workspace, 8"
        "${mainMod}, 9, workspace, 9"
        "${mainMod}, 0, workspace, 10"

        # MOVE TO SPACE
        "${mainMod} ${secondMod}, 1, movetoworkspace, 1"
        "${mainMod} ${secondMod}, 2, movetoworkspace, 2"
        "${mainMod} ${secondMod}, 3, movetoworkspace, 3"
        "${mainMod} ${secondMod}, 4, movetoworkspace, 4"
        "${mainMod} ${secondMod}, 5, movetoworkspace, 5"
        "${mainMod} ${secondMod}, 6, movetoworkspace, 6"
        "${mainMod} ${secondMod}, 7, movetoworkspace, 7"
        "${mainMod} ${secondMod}, 8, movetoworkspace, 8"
        "${mainMod} ${secondMod}, 9, movetoworkspace, 9"
        "${mainMod} ${secondMod}, 0, movetoworkspace, 10"

        # SPECIAL SPACE
        "${mainMod}, S, togglespecialworkspace, magic"
        "${mainMod} ${secondMod}, S, movetoworkspace, special:magic"

        # SCROLL
        "${mainMod}, mouse_down, workspace, e+1"
        "${mainMod}, mouse_up, workspace, e-1"

        # APPS
        "${mainMod} ${appMod}, D, exec, ${discord}"
        "${mainMod} ${appMod}, T, exec, ${telegram}"
        "${mainMod} ${appMod}, G, exec, steam"
        "${mainMod} ${secondMod}, Print, exec, grim -g \"$(slurp)\" - | swappy -f -"
      ];

      bindm = [
        "${mainMod}, mouse:272, movewindow"
        "${mainMod}, mouse:273, resizewindow"
      ];

      input = {
        kb_layout = "us, ua";
        kb_options = "grp:win_space_toggle";
      };
    };
    # configType = "lua";
    configType = "hyprlang";
  };
}
