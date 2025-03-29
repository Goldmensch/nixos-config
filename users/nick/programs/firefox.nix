{ pkgs, ... }: {
  programs.firefox = {
    enable = true;

    profiles = {
      nick = {
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          proton-pass
          proton-vpn
        ];
        search = {
          default = "DuckDuckGo";
          force = true;
        };
        settings = {
          # disable firefox pw manager
          "signon.rememberSignons" = false;

          # enforece darkmode
          "ui.systemUsesDarkTheme" = 1;

          # preset shortcuts (top sites)
          "browser.newtabpage.pinned" = ''
            [
              {
                "url": "https://www.youtube.com/",
                "label": "YouTube"
              },
              {
                "url": "https://www.icloud.com/",
                "label": "icloud"
              },
              {
                "url": "https://github.com/",
                "label": "github"
              },
              {
                "url": "https://search.nixos.org/packages",
                "label": "Nix search"
              },
              {
                "url": "http://localhost:631/admin",
                "label": "Cups"
              },
              {
                "url": "http://192.168.178.167:8123",
                "label": "HomeAssistant"
              },
              {
                "url": "http://192.168.178.167/",
                "label": "Mainsail"
              },
              {
                "url": "https://account.proton.me/apps",
                "label": "Proton Apps"
              }
            ]
          '';

          # fuck off sponsors // well doens't really work... fuck capitalism!!!
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
          "browser.newtabpage.activity-stream.showSponsored" = false;
          "browser.urlbar.suggest.topsites" = false;
          "services.sync.prefs.sync.browser.urlbar.suggest.topsites" = false;
        };
      };
    };
  };
}
