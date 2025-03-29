{ pkgs, unstable, ... }: 
let 
in {
  home.packages = with pkgs; [
    orca-slicer
    droidcam

    thunderbird


    kdePackages.krohnkite

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

    # fonts
    nerdfonts

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

    wl-clipboard

    zip
    unzip
    libsForQt5.ark
    
    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US
  ] ++ [
   unstable.jetbrains.idea-ultimate
  ];
}
