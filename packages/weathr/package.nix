{
    rustPlatform,
    lib,
    fetchFromGitHub
}:

rustPlatform.buildRustPackage {
    pname = "weathr";
    version = "1.3.0";

    src = fetchFromGitHub {
        owner = "Veirt";
        repo = "weathr";
        rev = "622d5cf47ae454964295cada10380db656d89de3";
        sha256 = "sha256-JwI5a+O5Nu39Nr0st5yBLTM5kPLC8UIGAoBMqxnOOl4=";
    };

    cargoHash = "sha256-Yj1WxpOLL8GiVpCebPZQgdw+L9g+4CNY7n2z8PJQz4k=";
    doCheck = false;

    meta = with lib; {
        description = "A terminal weather app with ASCII animations driven by real-time weather data.";
        homepage = "https://github.com/Veirt/weathr";
        license = licenses.gpl3Plus;
    };
}
