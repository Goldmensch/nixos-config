{ ... }: {
  imports = [
    ./hardware.nix
    ./home-manager.nix
    ./grub.nix
    ./users.nix
    ./programs.nix
    ./yubikey_gpg_ssh.nix
    ./locale_date.nix
    ./sound.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "computhor"; # Define your hostname.
  networking.networkmanager.enable = true;

  system.stateVersion = "23.05";
}