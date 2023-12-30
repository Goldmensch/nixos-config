{ pkgs, ... }: {
  home.packages = with pkgs; [
    zotero
    exfatprogs
    cider
    htop
    discord
    jetbrains.idea-ultimate
    kitty
    rofi
    htop
    git
    wget
    broot
    zsh
    starship
    xdg-utils
    whatsapp-for-linux
    playerctl

    ntfs3g

    # fonts
    nerdfonts

    # screenshots
    slurp
    grim
    swappy

    # audio
    pulsemixer

    # java
    temurin-bin-20
    gradle

 
    ventoy     
    gparted
    polkit_gnome

    prismlauncher

    qalculate-gtk

    texmaker
    wl-clipboard

    zip
    unzip
    
    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US
    
    # games
    lutris
    winetricks
    wineWowPackages.waylandFull
    libselinux
    protonup-qt
    steam
  ];
}
