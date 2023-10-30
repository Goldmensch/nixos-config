{ pkgs, ... }: {
  programs.firefox = {
    enable = true;
    profiles = {
      nick = {
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          bitwarden
          ecosia
        ];
        search = {
          default = "Ecosia Search";
          force = true;
        };
        settings = {
          # disable firefox pw manager
          "signon.rememberSignons" = false;

          # enforece darkmode
          "ui.systemUsesDarkTheme" = 1;

          # preset shortcuts (top sites)
          "browser.newtabpage.pinned" = ''[{"url":"https://www.youtube.com/","label":"YouTube"},{"url":"https://www.icloud.com/","label":"icloud"},{"url":"https://github.com/","label":"github"}]'';

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