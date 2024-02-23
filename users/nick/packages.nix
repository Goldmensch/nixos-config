{ pkgs, ... }: 
let 
in {
  home.packages = with pkgs; [
    webcord
    lm_sensors
    bottom
    parted
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

    neofetch

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
