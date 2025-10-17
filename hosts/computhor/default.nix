{...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
    ./printing.nix
    ./podman.nix
    ./kde.nix
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "libsoup-2.74.3"
  ];

  networking.hostName = "computhor";
}
