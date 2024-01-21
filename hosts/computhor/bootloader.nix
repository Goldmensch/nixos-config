{ ... }: {
  boot.loader.grub = {
    efiSupport = true;
    enable = true;
    device = "nodev";
    useOSProber = true;
  };
  boot.loader.efi = {
    canTouchEfiVariables = true;
  };
}
