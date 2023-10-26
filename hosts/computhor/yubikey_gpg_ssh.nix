{ pkgs, ... }: {
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      pinentryFlavor = "gnome3";
    };
  };

  services = {
    udev.packages = with pkgs; [yubikey-personalization];
    openssh.enable = true;
    pcscd.enable = true;
  };

  environment = {
    systemPackages = with pkgs; [
      gnupg

      yubikey-personalization
    ];

    shellInit = "
      gpg-connect-agent /bye
      export SHH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    ";

  };
}