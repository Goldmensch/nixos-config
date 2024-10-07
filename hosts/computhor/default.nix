{...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
    ./printing.nix
    ./podman.nix
    ./kde.nix
  ];

  networking.hostName = "computhor";
}
