{
  inputs = {
    # official nixos unstable repo
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    prismlauncher = {
      url = "github:PrismLauncher/PrismLauncher";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 
  };

  # Output config, or config for NixOS system
  outputs = { self, nixpkgs, home-manager, hyprland, prismlauncher}@inputs: {
    nixosConfigurations = {
      computhor = nixpkgs.lib.nixosSystem{
        system = "x86_64-linux";
        modules = [
          hyprland.nixosModules.default
          home-manager.nixosModules.home-manager
          ./hosts/computhor         
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
              users.nick.imports = [
                hyprland.homeManagerModules.default
                ./users/nick
              ];
            };
          }
        ];
        specialArgs = {
          inherit inputs;
        };
      };
    };
  };
}
