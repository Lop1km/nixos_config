{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    settings = {
      decoration = {
        #      shadow_offset = "0 5";
        #      "col.shadow" = "rgba(00000099)";
      };

      "$mod" = "SUPER";

      bind = [

        # BASE
        "$mod shift, F, fullscreen, toggle"
        "$mod shift, C, killactive"
        "$mod shift, M, exit"
        "$mod shift, E, exec, pcmanfm-qt"
        "$mod shift, V, togglefloating"

        # MOVE
        "$mod, H, movefocus, l"
        "$mod, L, movefocus, r"
        "$mod, K, movefocus, u"
        "$mod, J, movefocus, d"

        # SPACE
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # MOVE TO SPACE
        "$mod shift, 1, movetoworkspace, 1"
        "$mod shift, 2, movetoworkspace, 2"
        "$mod shift, 3, movetoworkspace, 3"
        "$mod shift, 4, movetoworkspace, 4"
        "$mod shift, 5, movetoworkspace, 5"
        "$mod shift, 6, movetoworkspace, 6"
        "$mod shift, 7, movetoworkspace, 7"
        "$mod shift, 8, movetoworkspace, 8"
        "$mod shift, 9, movetoworkspace, 9"
        "$mod shift, 0, movetoworkspace, 10"

        # SPECIAL SPACE
        "$mod, S, togglespecialworkspace, magic"
        "$mod shift, S, movetoworkspace, special:magic"

        # SCROLL
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        # APPS
        "$mod alt, D, exec, vesktop"
        "$mod alt, T, exec, materialgram"
        "$mod alt, G, exec, steam"
        "$mod shift, Print, exec, grim -g \"$(slurp)\" - | swappy -f -"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      input = {
        kb_layout = "us, ua";
        kb_options = "grp:win_space_toggle";
      };
    };
    configType = "hyprlang";
  };
}
