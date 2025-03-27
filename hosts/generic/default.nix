{ nur, pkgs, nixpkgs-unstable, ... }: {
  imports = [
    ./home-manager.nix
    ./users.nix
    ./programs.nix
    ./yubikey_gpg_ssh.nix
    ./locale_date.nix
    ./sound.nix
    ./printing.nix
    ./nix.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [ nur.overlays.default ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = [
    pkgs.ntfs3g
  ];

  networking.networkmanager.enable = true;

  system.stateVersion = "23.05";
}
