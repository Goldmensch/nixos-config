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
#         wallpaper = [
#           "/home/nick/config/users/nick/programs/plasma//wallpaper/net.dosowisko.PlasmaApplicationWallpaper"
#         ];
    };

    panels = [
      {
        location = "bottom";
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.icontasks"
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
          "org.kde.plasma.showdesktop"
        ];
        screen = "all";
      }
    ];

    hotkeys.commands = {
      "launch-proton" = {
        name = "Launch Proton";
        key = "Meta+P";
        command = "firefox https://account.proton.me/apps";
      };

      "launch-mail" = {
        name = "Launch Proton Mail";
        key = "Meta+Shift+P";
        command = "firefox https://mail.proton.me";
      };

      "launch-pass" = {
        name = "Launch Proton Pass";
        key = "Meta+Ctrl+P";
        command = "firefox https://pass.proton.me/";
      };

      "launch-calender" = {
        name = "Launch Proton Calender";
        key = "Meta+Alt+P";
        command = "firefox https://calendar.proton.me";
      };
    };


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

      # krohnkite
      "kwin"."KrohnkiteFocusDown" = "Meta+Down";
      "kwin"."KrohnkiteFocusLeft" = "Meta+Left";
      "kwin"."KrohnkiteFocusRight" = "Meta+Right";
      "kwin"."KrohnkiteFocusUp" = "Meta+Up";
      "kwin"."KrohnkiteShiftDown" = "Meta+Shift+Down";
      "kwin"."KrohnkiteShiftLeft" = "Meta+Shift+Left";
      "kwin"."KrohnkiteShiftRight" = "Meta+Shift+Right";
      "kwin"."KrohnkiteShiftUp" = "Meta+Shift+Up";
      "kwin"."KrohnkiteToggleFloat" = "Meta+Shift+F";

      "kwin"."Window to Next Screen" = "Meta+Ctrl+Right";
      "kwin"."Switch to Next Screen" = "Meta+Ctrl+Left";

      "kwin"."Window Close" = "Meta+q";
      "kwin"."Window Maximize" = "Meta+f";
      "kwin"."Window Minimize" = "Meta+j";
      "kwin"."Window Operations Menu" = "Alt+F3";

      "kwin"."Walk Through Windows" = "Alt+Tab";
      "kwin"."Walk Through Windows (Reverse)" = "Alt+Shift+Tab";

      "kwin"."view_actual_size" = "Meta+0";

      "ksmserver"."Lock Session" = ["Meta+L" "Screensaver,Meta+L" "Screensaver,Lock Session"];

      "mediacontrol"."mediavolumedown" = ",,Media volume down";
      "mediacontrol"."mediavolumeup" = ",,Media volume up";
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = ",,Play media playback";
      "mediacontrol"."playpausemedia" = "Media Play";
      "mediacontrol"."previousmedia" = "Media Previous";
      "mediacontrol"."stopmedia" = "Media Stop";

      "services/firefox.desktop"."_launch" = "Meta+M";
      "services/org.kde.dolphin.desktop"."_launch" = "Meta+N";
      "services/org.kde.konsole.desktop"."_launch" = "Meta+Return";
      "services/org.kde.spectacle.desktop"."RectangularRegionScreenShot" = "Meta+Shift+S";
      "services/org.kde.spectacle.desktop"."RecordScreent" = "Meta+Alt+R";
      "services/org.kde.spectacle.desktop"."RecordWindow" = "Meta+Ctrl+R";
      "services/org.kde.spectacle.desktop"."_launch" = "Print";


      # UNSET
      "kwin"."KrohnkiteTreeColumnLayout" = [ ];
      "kwin"."KrohnkitegrowWidth" = [ ];
      "kwin"."KrohnkiteShrinkHeight" = [ ];
      "kwin"."KrohnkiteShrinkWidth" = [ ];
      "kwin"."KrohnkiteSpiralLayout" = [ ];
      "kwin"."KrohnkiteSpreadLayout" = [ ];
      "kwin"."KrohnkiteStackedLayout" = [ ];
      "kwin"."KrohnkiteStairLayout" = [ ];
      "kwin"."KrohnkiteTileLayout" = [ ];
      "kwin"."KrohnkiteGrowHeight" = [ ];
      "kwin"."KrohnkiteIncrease" = [ ];
      "kwin"."KrohnkiteMonocleLayout" = [ ];
      "kwin"."KrohnkiteNextLayout" = [ ];
      "kwin"."KrohnkitePreviousLayout" = [ ];
      "kwin"."KrohnkiteQuarterLayout" = [ ];
      "kwin"."KrohnkiteRotate" = [ ];
      "kwin"."KrohnkiteRotatePart" = [ ];
      "kwin"."KrohnkiteSetMaster" = [ ];
      "kwin"."KrohnkiteFocusNext" = [ ];
      "kwin"."KrohnkiteFocusPrev" = [ ];
      "kwin"."KrohnkiteDecrease" = [ ];
      "kwin"."KrohnkiteFloatAll" = [ ];
      "kwin"."KrohnkiteFloatingLayout" = [ ];

      "ksmserver"."Halt Without Confirmation" = [ ];
      "ksmserver"."Log Out" = [ ];
      "ksmserver"."Log Out Without Confirmation" = [ ];
      "ksmserver"."Reboot" = [ ];
      "ksmserver"."Reboot Without Confirmation" = [ ];
      "ksmserver"."Shut Down" = [ ];
      "kwin"."Activate Window Demanding Attention" = [ ];
      "kwin"."Cycle Overview" = [ ];
      "kwin"."Cycle Overview Opposite" = [ ];
      "kwin"."Decrease Opacity" = [ ];
      "kwin"."Edit Tiles" = [ ];
      "kwin"."Expose" = [ ];
      "kwin"."ExposeAll" = [ ];
      "kwin"."ExposeClass" = [ ];
      "kwin"."ExposeClassCurrentDesktop" = [ ];
      "kwin"."Grid View" = [ ];
      "kwin"."Increase Opacity" = [ ];
      "kwin"."Move Tablet to Next Output" = [ ];
      "kwin"."MoveMouseToCenter" = [ ];
      "kwin"."MoveMouseToFocus" = [ ];
      "kwin"."MoveZoomDown" = [ ];
      "kwin"."MoveZoomLeft" = [ ];
      "kwin"."MoveZoomRight" = [ ];
      "kwin"."MoveZoomUp" = [ ];
      "kwin"."Setup Window Shortcut" = [ ];
      "kwin"."Switch One Desktop Down" = [ ];
      "kwin"."Switch One Desktop Up" = [ ];
      "kwin"."Switch One Desktop to the Left" = [ ];
      "kwin"."Switch One Desktop to the Right" = [ ];
      "kwin"."Switch Window Down" = [ ];
      "kwin"."Switch Window Left" = [ ];
      "kwin"."Switch Window Right" = [ ];
      "kwin"."Switch Window Up" = [ ];
      "kwin"."Switch to Desktop 1" = [ ];
      "kwin"."Switch to Desktop 10" = [ ];
      "kwin"."Switch to Desktop 11" = [ ];
      "kwin"."Switch to Desktop 12" = [ ];
      "kwin"."Switch to Desktop 13" = [ ];
      "kwin"."Switch to Desktop 14" = [ ];
      "kwin"."Switch to Desktop 15" = [ ];
      "kwin"."Switch to Desktop 16" = [ ];
      "kwin"."Switch to Desktop 17" = [ ];
      "kwin"."Switch to Desktop 18" = [ ];
      "kwin"."Switch to Desktop 19" = [ ];
      "kwin"."Switch to Desktop 2" = [ ];
      "kwin"."Switch to Desktop 20" = [ ];
      "kwin"."Switch to Desktop 3" = [ ];
      "kwin"."Switch to Desktop 4" = [ ];
      "kwin"."Switch to Desktop 5" = [ ];
      "kwin"."Switch to Desktop 6" = [ ];
      "kwin"."Switch to Desktop 7" = [ ];
      "kwin"."Switch to Desktop 8" = [ ];
      "kwin"."Switch to Desktop 9" = [ ];
      "kwin"."Switch to Next Desktop" = [ ];
      "kwin"."Switch to Previous Desktop" = [ ];
      "kwin"."Switch to Previous Screen" = [ ];
      "kwin"."Switch to Screen 0" = [ ];
      "kwin"."Switch to Screen 1" = [ ];
      "kwin"."Switch to Screen 2" = [ ];
      "kwin"."Switch to Screen 3" = [ ];
      "kwin"."Switch to Screen 4" = [ ];
      "kwin"."Switch to Screen 5" = [ ];
      "kwin"."Switch to Screen 6" = [ ];
      "kwin"."Switch to Screen 7" = [ ];
      "kwin"."Switch to Screen Above" = [ ];
      "kwin"."Switch to Screen Below" = [ ];
      "kwin"."Switch to Screen to the Left" = [ ];
      "kwin"."Switch to Screen to the Right" = [ ];
      "kwin"."Toggle Night Color" = [ ];
      "kwin"."Toggle Window Raise/Lower" = [ ];
      "kwin"."Walk Through Windows Alternative" = [ ];
      "kwin"."Walk Through Windows Alternative (Reverse)" = [ ];
      "kwin"."Walk Through Windows of Current Application" = [ ];
      "kwin"."Walk Through Windows of Current Application (Reverse)" = [ ];
      "kwin"."Walk Through Windows of Current Application Alternative" = [ ];
      "kwin"."Walk Through Windows of Current Application Alternative (Reverse)" = [ ];
      "kwin"."Window Above Other Windows" = [ ];
      "kwin"."Window Below Other Windows" = [ ];
      "kwin"."Window Fullscreen" = [ ];
      "kwin"."Window Grow Horizontal" = [ ];
      "kwin"."Window Grow Vertical" = [ ];
      "kwin"."Window Lower" = [ ];
      "kwin"."Window Maximize Horizontal" = [ ];
      "kwin"."Window Maximize Vertical" = [ ];
      "kwin"."Window Move" = [ ];
      "kwin"."Window Move Center" = [ ];
      "kwin"."Window No Border" = [ ];
      "kwin"."Window On All Desktops" = [ ];
      "kwin"."Window One Desktop Down" = [ ];
      "kwin"."Window One Desktop Up" = [ ];
      "kwin"."Window One Desktop to the Left" = [ ];
      "kwin"."Window One Desktop to the Right" = [ ];
      "kwin"."Window One Screen Down" = [ ];
      "kwin"."Window One Screen Up" = [ ];
      "kwin"."Window One Screen to the Left" = [ ];
      "kwin"."Window One Screen to the Right" = [ ];
      "kwin"."Window Pack Down" = [ ];
      "kwin"."Window Pack Left" = [ ];
      "kwin"."Window Pack Right" = [ ];
      "kwin"."Window Pack Up" = [ ];
      "kwin"."Window Quick Tile Bottom Left" = [ ];
      "kwin"."Window Quick Tile Bottom Right" = [ ];
      "kwin"."Window Quick Tile Bottom" = [ ];
      "kwin"."Window Quick Tile Left" = [ ];
      "kwin"."Window Quick Tile Right" = [ ];
      "kwin"."Window Quick Tile Top Left" = [ ];
      "kwin"."Window Quick Tile Top Right" = [ ];
      "kwin"."Window Quick Tile Top" = [ ];
      "kwin"."Window Raise" = [ ];
      "kwin"."Window Resize" = [ ];
      "kwin"."Window Shade" = [ ];
      "kwin"."Window Shrink Horizontal" = [ ];
      "kwin"."Window Shrink Vertical" = [ ];
      "kwin"."Window to Desktop 1" = [ ];
      "kwin"."Window to Desktop 10" = [ ];
      "kwin"."Window to Desktop 11" = [ ];
      "kwin"."Window to Desktop 12" = [ ];
      "kwin"."Window to Desktop 13" = [ ];
      "kwin"."Window to Desktop 14" = [ ];
      "kwin"."Window to Desktop 15" = [ ];
      "kwin"."Window to Desktop 16" = [ ];
      "kwin"."Window to Desktop 17" = [ ];
      "kwin"."Window to Desktop 18" = [ ];
      "kwin"."Window to Desktop 19" = [ ];
      "kwin"."Window to Desktop 2" = [ ];
      "kwin"."Window to Desktop 20" = [ ];
      "kwin"."Window to Desktop 3" = [ ];
      "kwin"."Window to Desktop 4" = [ ];
      "kwin"."Window to Desktop 5" = [ ];
      "kwin"."Window to Desktop 6" = [ ];
      "kwin"."Window to Desktop 7" = [ ];
      "kwin"."Window to Desktop 8" = [ ];
      "kwin"."Window to Desktop 9" = [ ];
      "kwin"."Window to Next Desktop" = [ ];
      "kwin"."Window to Previous Desktop" = [ ];
      "kwin"."Window to Previous Screen" = [ ];
      "kwin"."Window to Screen 0" = [ ];
      "kwin"."Window to Screen 1" = [ ];
      "kwin"."Window to Screen 2" = [ ];
      "kwin"."Window to Screen 3" = [ ];
      "kwin"."Window to Screen 4" = [ ];
      "kwin"."Window to Screen 5" = [ ];
      "kwin"."Window to Screen 6" = [ ];
      "kwin"."Window to Screen 7" = [ ];
      "kwin"."view_zoom_in" = [ ];
      "kwin"."view_zoom_out" = [ ];
      "org_kde_powerdevil"."Decrease Keyboard Brightness" = [ ];
      "org_kde_powerdevil"."Decrease Screen Brightness" = [ ];
      "org_kde_powerdevil"."Decrease Screen Brightness Small" = [ ];
      "org_kde_powerdevil"."Hibernate" = "Hibernate";
      "org_kde_powerdevil"."Increase Keyboard Brightness" = [ ];
      "org_kde_powerdevil"."Increase Screen Brightness" = [ ];
      "org_kde_powerdevil"."Increase Screen Brightness Small" = [ ];
      "org_kde_powerdevil"."PowerDown" = [ ];
      "org_kde_powerdevil"."PowerOff" = [ ];
      "org_kde_powerdevil"."Sleep" = [ ];
      "org_kde_powerdevil"."Toggle Keyboard Backlight" = [ ];
      "org_kde_powerdevil"."Turn Off Screen" = [ ];
      "org_kde_powerdevil"."powerProfile" = [ ];
      "plasmashell"."activate task manager entry 1" = [ ];
      "plasmashell"."activate task manager entry 10" = [ ];
      "plasmashell"."activate task manager entry 2" = [ ];
      "plasmashell"."activate task manager entry 3" = [ ];
      "plasmashell"."activate task manager entry 4" = [ ];
      "plasmashell"."activate task manager entry 5" = [ ];
      "plasmashell"."activate task manager entry 6" = [ ];
      "plasmashell"."activate task manager entry 7" = [ ];
      "plasmashell"."activate task manager entry 8" = [ ];
      "plasmashell"."activate task manager entry 9" = [ ];
      "plasmashell"."clear-history" = [ ];
      "plasmashell"."clipboard_action" = [ ];
      "plasmashell"."cycle-panels" = [ ];
      "plasmashell"."cycleNextAction" = [ ];
      "plasmashell"."cyclePrevAction" = [ ];
      "plasmashell"."manage activities" =[ ];
      "plasmashell"."next activity" = [ ];
      "plasmashell"."previous activity" = [ ];
      "plasmashell"."repeat_action" = [ ];
      "plasmashell"."show dashboard" = [ ];
      "plasmashell"."show-barcode" = [ ];
      "plasmashell"."show-on-mouse-pos" = [ ];
      "plasmashell"."stop current activity" = [ ];
      "plasmashell"."switch to next activity" = [ ];
      "plasmashell"."switch to previous activity" = [ ];
      "plasmashell"."toggle do not disturb" = [ ];
    };
    configFile = {
      "plasma-localerc"."Formats"."LANG" = "en_US.UTF-8";
      "plasma-localerc"."Translations"."LANGUAGE" = "en_US";

      "kwinrc"."Plugins"."krohnkiteEnabled" = true;
      "kwinrc"."Script-krohnkite"."enableBTreeLayout" = true;
      "kwinrc"."Script-krohnkite"."enableMonocleLayout" = false;
      "kwinrc"."Script-krohnkite"."enableSpiralLayout" = false;
      "kwinrc"."Script-krohnkite"."enableSpreadLayout" = false;
      "kwinrc"."Script-krohnkite"."enableStairLayout" = false;
      "kwinrc"."Script-krohnkite"."enableThreeColumnLayout" = false;
      "kwinrc"."Script-krohnkite"."enableTileLayout" = false;
      "kwinrc"."Script-krohnkite"."monocleMaximize" = false;
      "kwinrc"."Script-krohnkite"."screenDefaultLayout" = "DP-1:btreelayout,DP-2:btreelayout";
      "kwinrc"."Script-krohnkite"."tileLayoutGap" = 8;

      "kwinrc"."Windows"."FocusPolicy" = "FocusFollowsMouse";
      "kwinrc"."Windows"."SeparateScreenFocus" = true;
      "kwinrc"."Windows"."DelayFocusInterval" = 0;
      "kwinrc"."Windows"."NextFocusPrefersMouse" = false;
      "kwinrc"."Windows"."ActiveMouseScreen" = false;

      "kdeglobals"."WM"."frame" = "211,40,0";

      "spectaclerc"."ImageSave"."translatedScreenshotsFolder" = "Screenshots";
      "spectaclerc"."VideoSave"."translatedScreencastsFolder" = "Screencasts";
    };
  };
}
