{...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
  ];

  home-manager.users.nick.imports = [ ./home ];

  services.xserver.videoDrivers = [ "nvidia" ];

  networking.hostName = "gpn-computhor";
}
