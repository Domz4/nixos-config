{
  config,
  lib,
  pkgs,
  ...
}:
let
  base00 = "#101010";
  base01 = "#171717";
  base02 = "#3e223e";
  base03 = "#252525";
  base04 = "#2c2c2c";
  base11 = "#293646";
  base05 = "#d8d9dd";
  base06 = "#d2d3d7";
  base07 = "#cccdd1";
  base08 = "#2a9d8f";
  base09 = "#ff004d";
  base0A = "#e9c46a";
  base0B = "#f4a261";
  base0C = "#e76e51";
  base0D = "#901430";
  base0E = "#ffffff";
  base0F = "#ffccaa";
in
{
  # fixes polybar not launching at start for some reason
  systemd.user.services.polybar = {
    Install.WantedBy = [ "graphical-session.target" ];
  };

  services.polybar = {
    enable = true;
    script = ''polybar -c ~/.config/polybar/config.ini &'';
    config = {
      "global/main" = {
        margin-bottom = 0;
        margin-top = 0;
      };

      "bar/top" = {
        bottom = false;
        width = "100%";
        height = "24pt";
        line-size = "3pt";
        padding-left = 1;
        padding-right = 1;
        module-margin = 1;
        separator = "  ";
        font-0 = "Monaspace Krypton Bold";
        cursor-click = "pointer";
        modules-left = "xworkspaces";
        modules-right = "cpu memory date";
      };

      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        label-padding-left = 2;
        label-active = "%name%";
        label-active-padding = 1;
        label-active-foreground = base05;
        label-active-background = base11;
        label-active-underline = base09;
        label-occupied-underline = base08;
      };
      "module/memory" = {
        type = "internal/memory";
        internal = 2;
        format-prefix = "RAM ";
        format-prefix-foreground = base0E;
        label = "%percentage_used:2%%";
      };
      "module/cpu" = {
        type = "internal/cpu";
        internal = 2;
        format-prefix = "CPU ";
        format-prefix-foreground = base0E;
        label = "%percentage:2%%";
      };
      "modules/date" = {
        type = "internal/date";
        interval = 1;
        date = "%H:%M %d-%m-%Y";
        label = "%date%";
        label-foreground = base09;
      };

      "modules/xwindow" = {
        type = "internal/xwindow";
        label = "%title:0:60:...%";
      };

      "modules/xmonad" = {
        type = "custom/script";
        exec = "/home/domzemahine/.nix-profile/bin/xmonad-log";
        tail = true;
        interval = 0;
      };

      "settings" = {
        screenchange-reload = true;
        pseudo-transparency = true;
      };

    };
  };
}
