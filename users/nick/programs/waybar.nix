{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        # bar config
        height = 30;
        position = "top";
        layer = "top";
        modules-right = [ "pulseaudio" "clock" "tray" ];
        modules-center = [ "hyprland/window" ];
        modules-left = [ "hyprland/workspaces" ];

        # module configs
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
          format-muted = "{icon}";
          format-icons = {
            muted = "🔇";
            speaker = [ "🔈" "🔉" "🔊" ];
          };
          on-click = "kitty pulsemixer";
        };
      };
    };
  };
}