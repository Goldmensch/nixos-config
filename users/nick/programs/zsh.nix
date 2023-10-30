{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    shellAliases = {
      homecfg = "sudo nano /etc/nixos/users/nick/default.nix";
      nixcfg = "sudo nano /etc/nixos/hosts/computhor/default.nix";
      flakecfg = "sudo nano /etc/nixos/flake.nix";
      renix = "sudo nixos-rebuild switch && sudo systemctl restart home-manager-nick.service";
    };
    plugins = [
      {
        name = "zsh-completion";
        src = pkgs.zsh-completions;
      }
      {
        name = "catppuccin-zsh-syntax-hightlighting";
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "zsh-syntax-highlighting";
          rev = "06d519c20798f0ebe275fc3a8101841faaeee8ea";
          sha256 = "1yj916klvzpvwghii7m6qx2ya3p2kx25nydymilvjzbx8z0sdcj3";
        };
        file = "themes/catppuccin_mocha-zsh-syntax-highlighting.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
        src = pkgs.zsh-syntax-highlighting;
      }
     ];
  };
}