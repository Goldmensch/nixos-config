{ ... }: {
  services = {
    printing.enable = true;
    xserver = {
      layout = "eu";
      xkbVariant = "";
    };
  };
}