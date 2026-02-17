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

 outputs = { self, nixpkgs, home-manager, nur, plasma-manager, nixpkgs-stable,...}@inputs:
  let
    system = "x86_64-linux";
  in
  {
      overlays.default = final: prev:
      let
        dir = ./packages;
        isKdePackage = name:
          builtins.match ".*(plasma|kde).*" name != null;
        packagePath = name:
          dir + "/${name}/package.nix";
      in
      builtins.listToAttrs(
      map
        (name: {
            inherit name;
            value =
              if isKdePackage name
              then final.kdePackages.callPackage (packagePath name) {}
              else final.callPackage (packagePath name) {};
        })
        (builtins.attrNames (builtins.readDir dir))

      );
#       {
#         plasma-wallpaper-application =
#           final.kdePackages.callPackage ./packages/plasma-wallpaper-application/package.nix {};
#         weahtr =
#           final.pkgs.callPackage ./packages/weathr/package.nix {};
#       };

      nixosConfigurations.computhor = nixpkgs.lib.nixosSystem {
        system = system;
        specialArgs = inputs;
        modules = [
          { nixpkgs.overlays = [self.overlays.default ]; }

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
        system = system;
        specialArgs = inputs;
        modules = [
          home-manager.nixosModules.home-manager

          ./hosts/gpn
        ];
      };
    };
}

