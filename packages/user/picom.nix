{ }:
{
  # make picom nix config
  services.picom = {
    enable = true;
    settings = {
      corner-radius = 8.0;
      round-borders = 1;
    };
    inactiveOpacity = 1;
  };
}
