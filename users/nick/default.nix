{ pkgs, ... }: {
  imports = [
    ./packages.nix
    ./programs
    ./hyprland.nix
    ./mimeApps.nix
  ];

  home = {
    username = "nick";
    homeDirectory = "/home/nick";

    keyboard.layout = "eu";

    stateVersion = "23.05";
  };
}