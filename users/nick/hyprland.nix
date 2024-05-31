{ hyprland, unstable, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = unstable.hyprland;
    settings = {
      windowrule = [
       # qalculate-gtk
       "float, qalculate-gtk"
       "size 600 700, qalculate-gtk"
       "center, qalculate-gtk"
      ];

      workspace = [
        "2,monitor:DP-2,default:true"
        "1,monitor:DP-1,default:true"
      ];

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
        "SUPER,v,exec,hyprctl dispatch focuswindow discord && discord"
        "SUPER,c,exec,idea-ultimate"
        "SUPER,x,exec,kitty micro"

        ",XF86Tools,exec,hyprctl dispatch focuswindow Cider && cider" # it's actually music, but my keyboard sucks
        ",XF86HomePage,exec,kitty broot /etc/nixos/"
        ",XF86Calculator,exec,qalculate-gtk"


        # window manager
        "SUPER_SHIFT,s,exec,shutdown now"
        "SUPER_SHIFT,e,exit"

        ## utils
        # screenshot
        ''SUPER,print,exec,grim -g "$(slurp)" - | swappy -f -''
      ];


      bindle = [
        # sound
        ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ];

      bindl = [
        # sound
        ",XF86AudioMute,exec,wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        # multi media
        ",XF86AudioPlay,exec,playerctl play-pause"
        ",XF86AudioNext,exec,playerctl next"
        ",XF86AudionPrev,exec,playerctl previous"
      ];

      bindm = [
       # window movement
       "SUPER,mouse:272,movewindow"

       # window sizing
       "SUPER,mouse:273,resizewindow"
      ];

      env = [
        "LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "WLR_NO_HARDWARE_CURSORS,1"
        "MOZ_ENABLE_WAYLAND,1"
        "_JAVA_AWT_WM_NONREPARENTING,1"
        "SDL_VIDEODRIVER,wayland"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "QT_QPA_PLATFORM,wayland"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
      ];

      

      exec-once = [
        "waybar"

        "dbus-update-activation-environment DISPLAY I3SOCK SWAYSOCK WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland"
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user restart xdg-desktop-portal.service"
      ];

      input.kb_layout = "eu";
    };
  };
}
