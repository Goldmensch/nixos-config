{
  programs.ssh = {
    enable = true;
    matchBlocks = {
      homeserver = {
        hostname = "homeserver-nick";
        user = "homie";
      };
    };
  };
}
