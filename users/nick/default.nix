{ nur, nixpkgs, ... }: {

  imports = [
    ./packages.nix
    ./programs
    ./hyprland.nix
    ./xdg.nix
    ./sway_polkit_agent.nix
    ./gtk.nix
  ];

  home = {
    username = "nick";
    homeDirectory = "/home/nick";

    keyboard.layout = "eu";

    sessionVariables = {
      EDITOR = "micro";
      XDG_CURRENT_DESKTOP = "wayland";
    };

    stateVersion = "23.11";
  };
}
