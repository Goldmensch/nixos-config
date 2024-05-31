{ pkgs, unstable, ... }: 
let 
in {
  home.packages = with pkgs; [
    parted
    exfatprogs
    cider
    htop
    discord
    kitty
    rofi-wayland
    htop
    git
    wget
    broot
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
    
    # libreoffice
    libreoffice-qt
    hunspellDicts.de_DE
    hunspellDicts.en_US
  ] ++ [
   unstable.jetbrains.idea-ultimate 
  ];
}
