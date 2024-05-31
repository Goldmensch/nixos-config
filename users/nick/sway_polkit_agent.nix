{pkgs, ... }: {
  systemd.user.services.sway-polkit-authentication-agent = {
    Unit = {
      description = "Sway Polkit authentication agent";
      documentation = "https://gitlab.freedesktop.org/polkit/polkit/";
      after = [ "graphical-session-pre.target" ];
      partOf = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "always";
      BusName = "org.freedesktop.PolicyKit1.Authority";
    };

    Install.WantedBy = [ "graphical-session.target" ];
  };
}