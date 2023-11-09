{ pkgs, ... }: {
  home.packages = with pkgs; [
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

    gparted
    polkit_gnome

    prismlauncher

    qalculate-gtk

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
