{ nur, pkgs, ... }: {
  imports = [
    ./hardware.nix
    ./home-manager.nix
    ./bootloader.nix
    ./users.nix
    ./programs.nix
    ./yubikey_gpg_ssh.nix
    ./locale_date.nix
    ./sound.nix
    ./printing.nix
    ./not_in_hm_nick.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [ nur.overlay ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.permittedInsecurePackages = [
    "zotero-6.0.27"
  ];

  environment.systemPackages = [
    pkgs.ntfs3g
  ];

  networking.hostName = "computhor"; # Define your hostname.
  networking.networkmanager.enable = true;

  system.stateVersion = "23.05";
}
