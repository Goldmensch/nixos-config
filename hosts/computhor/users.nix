{ pkgs, ... }: {
  users.users.nick = {
    isNormalUser = true;
    description = "Nick Hensel";
    extraGroups = [ "networkmanager" "wheel" "seat"];
    shell = pkgs.zsh;
    initialPassword = "test";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEqW5HZq5oU8xBstcyA2JzL2iGZ69Cj6jyAL14p/uPs/ openpgp:0xFBFB79F7"
    ];
  };

}