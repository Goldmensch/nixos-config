{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur.url = "github:nix-community/nur";
  };

 outputs = { self, nixpkgs, hyprland, home-manager, nur }@inputs: {
    nixosConfigurations.computhor = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [
        hyprland.nixosModules.default
        home-manager.nixosModules.home-manager
        
        ./hosts/computhor
      ];
    };
  };
}
