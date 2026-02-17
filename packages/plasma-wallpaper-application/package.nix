{
    stdenv,
    fetchgit,
    kdePackages,
    lib,
    wrapQtAppsHook,
    qt6,
    cmake
}:

stdenv.mkDerivation {
    pname = "plasma-wallpaper-application";
    version = "1.2";

    src = fetchgit {
        url = "https://invent.kde.org/dos/plasma-wallpaper-application";
        rev = "eea391bb50e9e933e0f601dd432684bc0f9176e7";
        sha256 = "sha256-nZYJoyQ6NMnGJj06SvojPAS+HoMAhB9XsD683iRrztI=";
    };

    nativeBuildInputs = [
        cmake
        kdePackages.extra-cmake-modules
        wrapQtAppsHook
    ];

    buildInputs = [
        qt6.qtbase
        kdePackages.libplasma
    ];

    meta = with lib; {
        description = "Plasma wallpaper plugin that displays application windows";
        homepage = "https://invent.kde.org/dos/plasma-wallpaper-application";
        license = licenses.gpl3Plus;
    };
}
