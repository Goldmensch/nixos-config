{ pkgs, home-manager, hyprland, nixpkgs-unstable, plasma-manager, ... }: 
let
  unstablePkgs = import nixpkgs-unstable {
    config.allowUnfree = true;
    inherit (pkgs.stdenv.hostPlatform) system;
  };
in  
{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { unstable = unstablePkgs; plasma-manager = plasma-manager; };
    users.nick = {
      imports = [
        ../../users/nick
      ];
    };
  };
}
