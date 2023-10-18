{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    recommendedEnvironment = true;
    extraConfig = ''
      # monitors
      monitor = DP-2,2560x1440@165hz,0x0,1
      monitor = DP-1,2560x1440@165hz,2560x0,1

      # windowrules
      windowrule = center, class:jetbrains-idea

      # windows
      bind = SUPER,up,movefocus,u
      bind = SUPER,down,movefocus,d
      bind = SUPER,left,movefocus,l
      bind = SUPER,right,movefocus,r

      bind = SUPER_SHIFT,up,movewindow,u
      bind = SUPER_SHIFT,down,movewindow,d
      bind = SUPER_SHIFT,left,movewindow,l
      bind = SUPER_SHIFT,right,movewindow,r

      bind = SUPER,q,killactive
      bind = SUPER,k,togglefloating
      bind = SUPER,f,fullscreen

      bindm = SUPER,mouse:272,movewindow
      bindm = SUPER,mouse:273,resizewindow

      bind = SUPER,o,togglegroup
      bind = SUPER,u,changegroupactive,b
      bind = SUPER,i,changegroupactive,f
      bind = SUPER,p,togglesplit
      # applications
      bind = SUPER,m,exec,firefox
      bind = SUPER,d,exec,rofi -show drun
      bind = SUPER,RETURN,exec,kitty

      # wm
      bind = SUPER_SHIFT,s,exec,shutdown now
      bind = SUPER_SHIFT,e,exit

      # inputs/keyboard
      input {
        kb_layout = eu
      }

      # autostart
      exec-once = waybar

      # screenshot
      bind = SUPER,print,exec,grim -g "$(slurp)" - | swappy -f -
    '';
  };
}