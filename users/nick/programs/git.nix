{ ... }: {
  programs.git = {
    enable = true;
    userName = "Goldmensch";
    userEmail = "pm@goldmensch.dev";
    signing = {
      key = "0x8512EE59";
      signByDefault = true;
    };
    extraConfig = {
      core.autocrlf = "input";
      core.eol = "lf";
      push.autoSetupRemote = true;
      pull.rebase = true;
      safe.directory = "/etc/nixos";
    };
  };
}
