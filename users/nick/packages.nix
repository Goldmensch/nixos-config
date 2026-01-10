{ pkgs, ... }: {
  home.packages = with pkgs; [
    orca-slicer

    thunderbird


    kdePackages.krohnkite

    nil

    vlc
    parted
    exfatprogs
    htop

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

    # audio
    pulsemixer
     
    gparted
    polkit_gnome

    prismlauncher

    qalculate-gtk

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
