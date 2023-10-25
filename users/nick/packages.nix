{ pkgs, ... }: {
  home.packages = with pkgs; [
    cider
    htop
    discord
    firefox
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
  ];
}