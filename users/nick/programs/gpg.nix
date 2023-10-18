{ ... }: {
  programs.gpg = {
    enable = true;
    publicKeys = [
      {
        source = ../keys/yubikey.asc;
        trust = 5;
      }
    ];
  };
}