{ ... }: {
  programs.git = {
    enable = true;
    userName = "Nick Hensel";
    userEmail = "nickhensel25@icloud.com";
    signing = {
      key = "D8B927FD1F38609C8CD0CAE8084F9B575C002B59";
      signByDefault = true;
    };
    extraConfig = {
      core.autocrlf = true;
      push.autpSetupRemote = true;
      pull.rebase = true;
      safe.directory = "/etc/nixos";
    };
  };
}