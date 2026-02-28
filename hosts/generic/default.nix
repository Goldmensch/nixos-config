{ nur, pkgs,  ... }: {
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
  nix.settings.trusted-users = ["root" "nick"];

  environment.systemPackages = [
    pkgs.ntfs3g
  ];

  networking.networkmanager.enable = true;

  system.stateVersion = "23.05";
}
