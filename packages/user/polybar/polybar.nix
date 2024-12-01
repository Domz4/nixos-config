{
  config,
  lib,
  pkgs,
  ...
}:
let
  black1 = "#090911";
  white1 = "#FFFFFF";
  gray = "#888888";
  red1 = "#ff0022";
  red2 = "#990011";
  red3 = "#fb4934";
  green = "#229988";
in
{
  services.polybar = {
    enable = true;
    script = ''polybar main &'';
    config = {
      "global/main" = {
        margin-bottom = 0;
        margin-top = 0;
      };

      "bar/top" = {
        bottom = false;
        width = "100%";
        height = 19;
        scroll-up = "i3wm-wsnext";
        scroll-down = "i3wm-wsprev";
        modules-left = "i3";
      };

      "module/i3" = {
        type = "internal/i3";
        pin-workspaces = true;
        index-sort = true;
        format = "<label-state> <label-mode>";
      };

    };
  };
}
