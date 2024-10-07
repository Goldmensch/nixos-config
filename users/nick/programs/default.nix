{ ... }: {
  imports = [
    ./obs.nix
    ./yazi.nix
    ./git.nix
    ./gpg.nix
    ./zsh.nix
    ./micro.nix
    ./firefox.nix
    ./direnv.nix
    ./ssh.nix
    ./plasma.nix
  ];
  programs = {
    home-manager.enable = true;
    starship.enable = true;
  };
}
