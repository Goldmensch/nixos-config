{ pkgs, ... }: {
  home.packages = with pkgs; [
    via

    jbang

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
    wasistlos

    neofetch

    ntfs3g

    # zsh theme
    starship
     
    gparted

    zip
    unzip
    kdePackages.ark
    
    (jetbrains.idea-ultimate.override { forceWayland = true;})

    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US
  ] ++ [
  ];
}
