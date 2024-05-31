{ ... }: {
  boot.loader.grub = {
    efiSupport = true;
    enable = true;
    device = "nodev";
    useOSProber = true;
    extraConfig = ''
    set timeout=-1
    '';
  };
  boot.loader.efi = {
    canTouchEfiVariables = true;
  };
}
