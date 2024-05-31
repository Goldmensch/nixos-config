{ pkgs, home-manager, hyprland, nixpkgs-unstable, ... }: 
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
    extraSpecialArgs = { unstable = unstablePkgs; };
    users.nick = {
      imports = [
        ../../users/nick
      ];
    };
  };
}
