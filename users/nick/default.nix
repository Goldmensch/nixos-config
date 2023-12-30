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
    };

    stateVersion = "23.11";
  };
}
