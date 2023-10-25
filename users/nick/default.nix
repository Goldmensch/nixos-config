{ pkgs, ... }: {
  imports = [
    ./packages.nix
    ./programs
    ./hyprland.nix
    ./xdg.nix
  ];

  home = {
    username = "nick";
    homeDirectory = "/home/nick";

    keyboard.layout = "eu";

    stateVersion = "23.05";
  };
}