{ pkgs, ...}: {
    home.packages = builtins.filter pkgs.lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts); # fonts
}
