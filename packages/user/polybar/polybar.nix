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
    config = ./shades/config.ini;
    script = "polybar main &";
    extraConfig = bars + colors + mods + user_mods;
    # config = {
    #   "global/wm" = {
    #     margin-bottom = 0;
    #     margin-top = 0;
    #     include-files = [
    #       "${config.home.homeDirectory}/.config/polybar/shades/bars.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/colors.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/modules.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/user_modules.ini"
    #     ];
    #   };
    #   "bar/main" = {
    #     monitor-strict = false;
    #     override-redirect = false;
    #     bottom = false;
    #     fixed-center = true;
    #     width = "97%";
    #     height = 18;
    #     offset-x = "1%";
    #     offset-y = "2%";
    #     background = bg;
    #     foreground = fg;
    #     radius-top = 0;
    #     radius-bottom = 0;
    #     underline-size = 2;
    #     underline-color = fg;
    #     border-size = 0;
    #     border-color = bg;
    #     padding = 0;
    #     module-margin-left = 0;
    #     module-margin-right = 0;
    #     modules-left = "launcher workspaces google github reddit gmail twitter";
    #     modules-right = "mpd updates alsa battery network date sysmenu";
    #     dim-value = 1;
    #     tray-position = "none";
    #     tray-detached = false;
    #     tray-maxsize = 16;
    #     tray-background = bg;
    #     tray-offset-x = 0;
    #     tray-offset-y = 0;
    #     tray-padding = 0;
    #     tray-scale = 1;
    #     enable-ipc = true;
    #   };
    #   "settings" = {
    #     throttle-output = 5;
    #     throttle-output-for = 10;
    #     screenchange-reload = false;
    #     compositing-background = "source";
    #     compositing-foreground = "over";
    #     compositing-overline = "over";
    #     compositing-underline = "over";
    #     compositing-border = "over";
    #     pseudo-transparency = false;
    #   };
    # };
  };
}
