{
    stdenv
}:

stdenv.mkDerivation {
    pname = "plasma-wallpaper-application";
    version = "1.2";

    src = builtins.fetchGit {
        url = "https://invent.kde.org/dos/plasma-wallpaper-application";
        rev = "eea391bb50e9e933e0f601dd432684bc0f9176e7";
        ref = "1.2";
    };
}
