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
  base22 = "#20515f";
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
        cursor-click = "pointer";
        font-0 = "Monaspace Krypton:size=9;2:weight=bold";
        height = "12pt";
        module-margin = 1;
        padding-right = 1;
        separator = "  ";
        width = "100%";
        offset-x = "0%";
        offset-y = "0%";
        modules-left = "xworkspaces";
        modules-right = "cpu memory date";
        background = "#181818";
      };

      "module/cpu" = {
        type = "internal/cpu";
        internal = 2;
        format-prefix = "CPU ";
        format-prefix-foreground = base0E;
        label = "%percentage:2%%";
      };

      "module/memory" = {
        type = "internal/memory";
        internal = 2;
        format-prefix = "RAM ";
        format-prefix-foreground = base0E;
        label = "%percentage_used:2%%";
      };

      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        pin-workspaces = true;
        label-padding = 1;

        icon-0 = "1;1";
        icon-1 = "2;2";
        icon-2 = "3;3";
        icon-3 = "4;4";
        icon-4 = "5;5";
        icon-5 = "6;6";
        icon-6 = "7;7";
        icon-7 = "8;8";
        icon-8 = "9;9";
        icon-9 = "D;D";
        icon-default = "*";

        format = "<label-state>";
        format-overline = "#282828";
        format-underline = "#282828";

        enable-click = true;
        enable-scroll = true;

        label-monitor = "%name%";

        label-empty = "%name%";
        label-empty-padding = "3pt";

        label-active = "%icon%";
        label-active-background = base09;
        label-active-foreground = "#252525";
        label-active-padding = "3pt";

        label-occupied = "%icon%";
        label-occupied-background = base0D;
        label-occupied-padding = "3pt";
      };

      "module/date" = {
        type = "internal/date";
        date = "%H:%M %d-%m-%Y";
        interval = 1;
        label = "%date%";
        label-foreground = base09;
      };

      "module/xmonad" = {
        type = "custom/script";
        exec = "/home/domzemahine/.nix-profile/bin/xmonad-log";
        interval = 0;
        tail = true;
      };

      "module/xwindow" = {
        type = "internal/xwindow";
        label = "%title:0:60:...%";
      };

      "module/volume" = {
        type = "internal/alsa";
        master-soundcard = "default";
        speaker-soundcard = "default";
        headphone-soundcard = "default";
        master-mixer = "Master";
      };

      "settings" = {
        pseudo-transparency = true;
        screenchange-reload = true;
      };
    };
  };
}
