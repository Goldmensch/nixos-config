{ pkgs, ... }: {
  xdg = {
    configFile."menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

    mimeApps = {
      enable = true;
      defaultApplications = {
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "application/pdf" = "firefox.desktop";
      };
    };

    desktopEntries = {
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
