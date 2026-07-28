{ inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  # configure options
  programs.noctalia = {
    enable = true;
    settings = {
      # configure noctalia here
      bar = {
        density = "compact";
        position = "top";
        show_capsule = false;

        widgets = {
          border_width = 0.5;
          center = [ "workspaces" ];
          concave_edge_corners = false;
          end = [
            "privacy"
            "group:g2"
            "notifications"
            "clock"
          ];
          font_family = "JetBrainsMono Nerd Font";
          margin_ends = 0;
          radius = 0;
          scale = 1.2000000104308128;
          start = [
            "control-center"
            "volume"
            "group:g1"
          ];
          thickness = 27;

          capsule_group = [
            {
              id = "g1";
              enabled = true;
              fill = "surface_variant";
              members = [
                "network"
                "network_tx"
                "network_rx"
              ];
              opacity = 1.0;
              padding = 6.0;
            }
            {
              id = "g2";
              enabled = true;
              fill = "surface_variant";
              members = [
                "cpu"
                "temp"
                "ram"
              ];
              opacity = 1.0;
              padding = 6.0;
            }
          ];
        };
      };

      control_center = {
        hidden_tabs = [
          "power"
          "bluetooth"
        ];

        shortcuts = [
          {
            type = "wifi";
          }
          {
            type = "bluetooth";
          }
          {
            type = "nightlight";
          }
          {
            type = "dark_mode";
          }
        ];
      };

      desktop_widgets = {
        enabled = false;
      };

      dock = {
        enabled = false;
      };

      lockscreen_widgets = {
        enabled = false;
      };

      osd = {
        position = "top_right";
      };

      shell = {
        font_family = "JetBrainsMono Nerd Font";
        telemetry_enabled = true;
        launcher = {
          session_search = true;
        };
        screen_corners = {
          size = 1;
        };

      };
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Gruvbox";
      };

      wallpaper = {
        directory = "/home/lop1k/Картинки/wall";
        default = {
          path = "/home/lop1k/Картинки/wall/wallhaven-p9pd23.png";
        };
        last = {
          path = "/home/lop1k/Картинки/wall/wallhaven-p9pd23.png";
        };
        monitors.HDMI-A-1 = {
          path = "/home/lop1k/Картинки/wall/wallhaven-p9pd23.png";
        };
      };
      widget = {
        clock = {
          color = "primary";
          format = "{:%H:%M:%S}";
        };
        network = {
          show_label = false;
        };
        privacy = {
          scale = 1.2;
        };
        ram = {
          show_label = false;
        };
        volume = {
          show_label = false;
        };
        workspaces = {
          anchor = true;
          display = "none";
        };
      };
    };
  };
}
