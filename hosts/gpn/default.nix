{...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
    ./kde.nix
  ];

  networking.hostName = "computhor";

  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false;  # see the note above
}
