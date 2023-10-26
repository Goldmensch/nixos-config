{ home-manager, hyprland, ... }: {
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    users.nick.imports = [
      ../../users/nick
    ];
  };
}