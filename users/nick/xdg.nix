{ ... }: {
  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "application/pdf" = "firefox.desktop";
      };
    };

    desktopEntries = {
      broot = {
        name = "Broot";
        exec = "broot";
        genericName = "Terminal file manager";
        terminal = true;
      };

      pulsemixer = {
        name = "Pulsemixer";
        exec = "pulsemixer";
        genericName = "Audio Mixer";
        terminal = true;
      };

      micro = {
        name = "Micro";
        exec = "micro";
        genericName = "Terminal Editor";
        terminal = true;
      };
    };
  };
}
