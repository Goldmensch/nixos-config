{ unstable, ...}:
{
  programs.obs-studio = {
    package = unstable.obs-studio;
    enable = true;
  };
}
