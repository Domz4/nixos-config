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
    # config = {
    #   "global/wm" = {
    #     margin-bottom = "0";
    #     margin-top = "0";
    #     include-files = [
    #       "${config.home.homeDirectory}/.config/polybar/shades/bars.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/colors.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/modules.ini"
    #       "${config.home.homeDirectory}/.config/polybar/shades/user_modules.ini"
    #     ];
    #   };
    #   "bar/main" = {
    #     monitor-strict = "false";
    #     override-redirect = "false";
    #     bottom = "false";
    #     fixed-center = "true";
    #     width = "98%";
    #     height = "36";
    #     offset-x = "1%";
    #     offset-y = "2%";
    #     background = "${color.background}";
    #     foreground = "${color.foreground}";
    #     radius-top = "0.0";
    #     radius-bottom = "0.0";
    #     underline-size = "2";
    #     underline-color = "${color.foreground}";
    #     border-size = "0";
    #     border-color = "${color.background}";
    #     padding = "0";
    #     module-margin-left = "0";
    #     module-margin-right = "0";
    #     font-0 = "Iosevka Nerd Font:pixelsize=14;4";
    #     font-1 = "Iosevka Nerd Font:pixelsize=14;4";
    #     modules-left = "launcher workspaces google github reddit gmail twitter";
    #     modules-center = "";
    #     modules-right = "mpd updates alsa battery network date sysmenu";
    #     separator = "";
    #     dim-value = "1.0";
    #     wm-name = "";
    #     locale = "";
    #     tray-position = "none";
    #     tray-detached = "false";
    #     tray-maxsize = "16";
    #     tray-background = "${color.background}";
    #     tray-offset-x = "0";
    #     tray-offset-y = "0";
    #     tray-padding = "0";
    #     tray-scale = "1.0";
    #     enable-ipc = "true";
    #     click-left = "";
    #     click-middle = "";
    #     click-right = "";
    #     scroll-up = "";
    #     scroll-down = "";
    #     double-click-left = "";
    #     double-click-middle = "";
    #     double-click-right = "";
    #     cursor-click = "";
    #     cursor-scroll = "";
    #   };
    #   "settings" = {
    #     throttle-output = "5";
    #     throttle-output-for = "10";
    #     screenchange-reload = "false";
    #     compositing-background = "source";
    #     compositing-foreground = "over";
    #     compositing-overline = "over";
    #     compositing-underline = "over";
    #     compositing-border = "over";
    #     pseudo-transparency = "false";
    #
    #   };
    # };
    extraConfig = bars + colors + mods + user_mods;
    script = ''exec polybar main'';
  };
}
