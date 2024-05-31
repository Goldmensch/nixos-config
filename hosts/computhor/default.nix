{...}: {
  imports = [
    ../generic
    ./bootloader.nix
    ./hardware.nix
    ./printing.nix
  ];

  home-manager.users.nick.imports = [ ./home ];

  networking.hostName = "computhor";
}
