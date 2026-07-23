{ ... }: {
  boot.loader.limine = {
    enable = true;
    efiSupport = true;
    secureBoot.enable = true;
    secureBoot.autoGenerateKeys = true;
  };
  boot.loader.efi = {
    canTouchEfiVariables = false;
  };
}
