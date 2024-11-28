{
  config,
  lib,
  pkgs,
  ...
}:
let
  bars = lib.readFile ./shades/bars.ini;
  colors = lib.readFile ./shades/colors.ini;
  mods = lib.readFile ./shades/modules.ini;
  user_mods = lib.readFile ./shades/user_modules.ini;
in
{

  home.packages = with pkgs; [
    xfce.orage
  ];

  services.polybar = {
    enable = true;
    config = ./config.ini;
    script = "polybar main &";
    extraConfig = bars + colors + mods + user_mods;
  };
}
