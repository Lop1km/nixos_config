{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      # File manager
      "inode/directory" = "pcmanfm-qt.desktop";
      "x-scheme-handler/file" = "pcmanfm-qt.desktop";
      "x-scheme-handler/trash" = "pcmanfm-qt.desktop";

      # MPV Audio
      "audio/mp3" = "mpv.desktop";
      "audio/aac" = "mpv.desktop";
      "audio/flac" = "mpv.desktop";
      "audio/m4a" = "mpv.desktop";
      "audio/mpeg" = "mpv.desktop";
      "audio/ogg" = "mpv.desktop";
      "audio/opus" = "mpv.desktop";
      "audio/wav" = "mpv.desktop";

      # MPV Video
      "video/mkv" = "mpv.desktop";
      "video/mp4" = "mpv.desktop";
      "video/mpeg" = "mpv.desktop";
      "video/ogg" = "mpv.desktop";
      "video/webm" = "mpv.desktop";

      # IMV
      "image/jpeg" = "imv.desktop";
      "image/png" = "imv.desktop";
      "image/gif" = "imv.desktop";
      "image/webp" = "imv.desktop";
      "image/svg+xml" = "imv.desktop";
      "image/x-icon" = "imv.desktop";

      # Lagrange
      "x-scheme-handler/gemini" = "lagrange.desktop";
      "x-scheme-handler/gopher" = "lagrange.desktop";
      "x-scheme-handler/spartan" = "lagrange.desktop";
    };
  };
}
