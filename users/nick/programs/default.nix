{ ... }: {
  imports = [
    ./obs.nix
    ./broot.nix
    ./git.nix
    ./gpg.nix
    ./zsh.nix
    ./waybar.nix
    ./micro.nix
    ./firefox.nix
    ./direnv.nix
    ./ssh.nix
  ];
  programs = {
    home-manager.enable = true;
    starship.enable = true;
  };
}
