{ nur, nixpkgs, plasma-manager, ... }: {

  imports = [
    plasma-manager.homeManagerModules.plasma-manager
    
    ./packages.nix
    ./programs
    ./xdg.nix
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
