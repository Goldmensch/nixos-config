{ pkgs, ... }: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        # bar config
        height = 30;
        position = "top";
        layer = "top";
        modules-right = [ "network" "pulseaudio" "clock" "tray" ];
        modules-center = [ "hyprland/window" ];
        modules-left = [ "hyprland/workspaces" ];

        # module configs
        "network" = {
          format-ethernet = "{ipaddr}/{cidr} 🎮";
          tooltip-format-ethernet = "{bandwidthTotalBytes} ➡️ {ifname} 🔗";

          format-disconnected = "Disconnected ❌";
        };

        "tray" = {
          spacing = 10;
          icon-size = 20;
        };

        "hyprland/window" = {
          format = "{initialClass} 👉 {title}";
        };

        "clock" = {
          interval = 1;
          tooltip-format = "<big>{:%Y %B}</big>\n<tt>{calendar}</tt>";
          format = "{:%A %d %b %Y %H:%M:%S}";
          calendar-weeks-pos = "right";
        };

        "pulseaudio" = {
          format = "{volume}% {icon}";
          format-muted = "🔇";
          format-icons = {
            speaker = [ "🔈" "🔉" "🔊" ];
          };
          tooltip-format = "{desc}";
          on-click = "kitty pulsemixer";
          on-click-right = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          scroll-step = 5;
          max-volume = 150;
        };
      };
    };
  };

  systemd.user.services.waybar = {
    Service = {
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "always";
    };

    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
