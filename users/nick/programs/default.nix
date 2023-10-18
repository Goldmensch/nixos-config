{ ... }: {
  imports = [
    ./broot.nix
    ./git.nix
    ./gpg.nix
    ./zsh.nix
  ];
  programs = {
    home-manager.enable = true;
    waybar.enable = true;
    starship.enable = true;

  };
}