{
  programs.ssh = {
    enable = true;
    matchBlocks = {
      homeserver = {
        hostname = "homeserver-nick";
        user = "homie";
      };

      remarkable = {
        hostname = "192.168.178.153";
        user = "root";
      };
    };
  };
}
