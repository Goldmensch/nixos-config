{ ... }: {
  imports = [
    ./git.nix
    ./gpg.nix
    ./zsh.nix
    ./firefox.nix
    ./direnv.nix
    ./ssh.nix
    ./plasma
  ];
  programs = {
    home-manager.enable = true;
    starship.enable = true;
  };
}
