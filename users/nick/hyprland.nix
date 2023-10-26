{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [
        "DP-2,2560x1440@165hz,0x0,1"
        "DP-1,2560x1440@165hz,2560x0,1"
      ];

      # fix intellij popup bugs
      "windowrule" = "center, class:jetbrains-idea";

      bind = [
        # window focus
        "SUPER,up,movefocus,u"
        "SUPER,down,movefocus,d"
        "SUPER,left,movefocus,l"
        "SUPER,right,movefocus,r"

        # window movement
        "SUPER_SHIFT,up,movewindow,u"
        "SUPER_SHIFT,down,movewindow,d"
        "SUPER_SHIFT,left,movewindow,l"
        "SUPER_SHIFT,right,movewindow,r"

        # window management
        "SUPER,q,killactive"
        "SUPER,k,togglefloating"
        "SUPER,f,fullscreen"

        # grouped windows
        "SUPER,o,togglegroup"
        "SUPER,u,changegroupactive,b"
        "SUPER,i,changegroupactive,f"
        "SUPER,p,togglesplit"

        # applicatons
        "SUPER,m,exec,firefox"
        "SUPER,n,exec,kitty broot"
        "SUPER,d,exec,rofi -show drun"
        "SUPER,RETURN,exec,kitty"
        "SUPER,b,exec,kitty pulsemixer"

        # window manager
        "SUPER_SHIFT,s,exec,shutdown now"
        "SUPER_SHIFT,e,exit"

        ## utils
        # screenshot
        ''SUPER,print,exec,grim -g "$(slurp)" - | swappy -f -''
      ];

      bindm = [
       # window movement
       "SUPER,mouse:272,movewindow"

       # window sizing
       "SUPER,mouse:273,resizewindow"
      ];

      # autostart
      exec-once = [
        "waybar"
      ];

      input.kb_layout = "eu";
    };
  };
}