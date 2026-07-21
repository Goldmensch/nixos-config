{pkgs, ...}: {
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

  services.udev.packages = [
    pkgs.via
  ];

  networking.hostName = "computhor";
}
