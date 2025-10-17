{ pkgs, nixpkgs-stable, ... }: {
  home.packages = with pkgs; [
    orca-slicer
    droidcam

    thunderbird


    kdePackages.krohnkite

    nil

    vlc
    parted
    exfatprogs
    cider
    htop

    discord
    webcord

    kitty
    htop
    git
    wget
    zsh
    xdg-utils
    whatsapp-for-linux
    playerctl

    neofetch

    ntfs3g

    # zsh theme
    starship


    # screenshots
    slurp
    grim
    swappy

    # audio
    pulsemixer
     
    gparted
    polkit_gnome

    prismlauncher

    qalculate-gtk

    zip
    unzip
    kdePackages.ark
    
    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US

    jetbrains.idea-ultimate
  ] ++ [
  ];
}
