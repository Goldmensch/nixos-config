{ ... }: {
  imports = [
    ./broot.nix
    ./git.nix
    ./gpg.nix
    ./zsh.nix
    ./waybar.nix
    ./firefox.nix
  ];
  programs = {
    home-manager.enable = true;
    starship.enable = true;
  };
}