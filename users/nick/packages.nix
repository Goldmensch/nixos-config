{ pkgs, ... }: {
  home.packages = with pkgs; [
    via

    jbang
    kdePackages.isoimagewriter

    thunderbird

    kdePackages.krohnkite

    nil

    vlc
    parted
    exfatprogs

    discord

    htop
    git
    wget
    zsh
    xdg-utils
    karere

    ntfs3g

    # zsh theme
    starship
     
    gparted

    zip
    unzip
    kdePackages.ark
    
    (jetbrains.idea.override { forceWayland = true;})

    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US
  ] ++ [
  ];
}
