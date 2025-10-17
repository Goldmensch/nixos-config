{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    nur.url = "github:nix-community/nur";
  };

 outputs = { self, nixpkgs, home-manager, nur, plasma-manager, nixpkgs-stable,...}@inputs: {
    nixosConfigurations.computhor = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [
        home-manager.nixosModules.home-manager

        ({ pkgs, ... }: {
          home-manager.extraSpecialArgs = {
            nixpkgs-stable = import nixpkgs-stable { system = pkgs.hostPlatform.system; config = { allowUnfree = true; }; };
          };
        })

        ./hosts/computhor
      ];
    };

    nixosConfigurations.gpn-computhor = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [
        home-manager.nixosModules.home-manager

        ./hosts/gpn
      ];
    };
  };
}

