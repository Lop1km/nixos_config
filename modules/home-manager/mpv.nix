{ pkgs, ... }:
{
  programs.mpv = {
    enable = true;
    scripts = with pkgs.mpvScripts; [
      uosc
      thumbfast
    ];
    config = {
      gpu-api = "vulkan";
      gpu-context = "auto";
      hwdec = "auto-safe";
      keep-open = "yes";
      loop-file = "inf";
      osc = "no";
      osd-bar = "no";
      border = "no";
      profile = "high-quality";
      save-position-on-quit = "yes";
      vo = "gpu-next";
    };
  };
}
