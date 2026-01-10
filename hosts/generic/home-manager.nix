{ plasma-manager, ... }: {
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { plasma-manager = plasma-manager; };
    users.nick = {
      imports = [
        ../../users/nick
      ];
    };
  };
}
