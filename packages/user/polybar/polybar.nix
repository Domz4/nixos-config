{
  config,
  lib,
  pkgs,
  ...
}:
{
  services.polybar = {
    enable = true;
    script = ''polybar -c ~/.config/polybar/example/config.ini'';
  };
}
