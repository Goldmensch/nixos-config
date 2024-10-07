{
  programs.plasma = {
    enable = true;
    immutableByDefault = true;
    overrideConfig = true;

    input = {
        keyboard = {
            layouts = [
                {
                    layout = "eu";
                }
            ];
        };
    };

    workspace = {
        lookAndFeel = "org.kde.breezedark.desktop";
    };

    panels = [
      {
        location = "bottom";
        height = 40;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.icontasks"
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
          "org.kde.plasma.showdesktop"
        ];
      }
    ];

    shortcuts = {
      "kmix"."decrease_microphone_volume" = "Microphone Volume Down";
      "kmix"."decrease_volume" = "Volume Down";
      "kmix"."decrease_volume_small" = "Shift+Volume Down";
      "kmix"."increase_microphone_volume" = "Microphone Volume Up";
      "kmix"."increase_volume" = "Volume Up";
      "kmix"."increase_volume_small" = "Shift+Volume Up";
      "kmix"."mute" = "Volume Mute";

      "kwin"."Kill Window" = "Meta+Ctrl+Esc";
      "kwin"."Overview" = "Meta+W";
      "kwin"."Show Desktop" = "Meta+D";

      "kwin"."Switch Window Down" = "Meta+Down";
      "kwin"."Switch Window Left" = "Meta+Left";
      "kwin"."Switch Window Right" = "Meta+Right";
      "kwin"."Switch Window Up" = "Meta+Up";

      "kwin"."Window Close" = "Meta+q";
      "kwin"."Window Maximize" = "Meta+f";
      "kwin"."Window Minimize" = "Meta+j";

      "kwin"."Window Operations Menu" = "Alt+F3";
      "kwin"."Window Pack Down" = "Meta+Shift+Down,,Fenster nach unten verschieben";
      "kwin"."Window Pack Left" = "Meta+Shift+Left,,Fenster nach links verschieben";
      "kwin"."Window Pack Right" = "Meta+Shift+Right,,Fenster nach rechts verschieben";
      "kwin"."Window Pack Up" = "Meta+Shift+Up,,Fenster nach oben verschieben";
      "kwin"."Window Quick Tile Bottom" = "Meta+Ctrl+Down";
      "kwin"."Window Quick Tile Left" = "Meta+Ctrl+Left";
      "kwin"."Window Quick Tile Right" = "Meta+Ctrl+right";
      "kwin"."Window Quick Tile Top" = "Meta+Ctrl+up";
      "mediacontrol"."mediavolumedown" = "none,,Media volume down";
      "mediacontrol"."mediavolumeup" = "none,,Media volume up";
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = "none,,Play media playback";
      "mediacontrol"."playpausemedia" = "Media Play";
      "mediacontrol"."previousmedia" = "Media Previous";
      "mediacontrol"."stopmedia" = "Media Stop";
      "firefox"."firefox" = "Meta+m";
      "services/org.kde.konsole.desktop"."_launch" = "Meta+Return"; # launch konsole
      "services/org.kde.dolphin.desktop"."_launch" = "Meta+N"; # laucnh dolphin
      "services/firefox.desktop"."_launch" = "Meta+m"; # launch firefox


    };
    configFile = {
      "plasma-localerc"."Formats"."LANG" = "en_US.UTF-8";
      "plasma-localerc"."Translations"."LANGUAGE" = "en_US";
    };
  };
}
