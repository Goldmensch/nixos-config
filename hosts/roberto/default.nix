{pkgs, ...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
    ./printing.nix
    ./kde.nix
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "libsoup-2.74.3"
  ];

  services.udev.packages = [
    pkgs.via
  ];

  networking.hostName = "roberto";
}
