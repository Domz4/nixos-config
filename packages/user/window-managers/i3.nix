{
  pkgs,
  config,
  lib,
  ...
}:

let
  # Modifier key
  mod = "Mod4";
in
{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = mod;

      gaps = {
        inner = 2;
        outer = 2;
      };

      keybindings = {
        "${mod}+t" = "exec i3-sensible-terminal";
        "${mod}+n" = "exec nautilus";
        "${mod}+Shift+x" = "kill";
        "${mod}+p" = "exec rofi -show drun";
        "${mod}+f" = "exec firefox";

        # "${mod}+Shift+Print" = "exec flameshot gui";
        # "Print" = "exec maim | xclip -selection clipboard -t image/png";
        # "${mod}+Print" = "exec maim ~/Pictures/screenshot_$(date +%s).png";

        "${mod}+v" = "exec clipboardy";

        "${mod}+Control+g" = "gaps inner toggle; gaps outer toggle";
        "${mod}+Shift+g" = "gaps inner all set 8; gaps top set 20";
        "${mod}+space" = "exec i3-msg layout toggle split";
        "${mod}+Shift+space" = "exec i3-msg layout default";
        "${mod}+j" = "focus down";
        "${mod}+k" = "focus up";

        "${mod}+m" = "exec i3-msg focus parent";
        "${mod}+Return" = "exec i3-msg swap container with mark master";

        "${mod}+Shift+j" = "exec i3-msg move down";
        "${mod}+Shift+k" = "exec i3-msg move up";
        "${mod}+h" = "resize shrink width 10 px or 10 ppt";
        "${mod}+l" = "resize grow width 10 px or 10 ppt";
        "${mod}+Shift+t" = "floating disable";
        "${mod}+comma" = "exec i3-msg split horizontal";
        "${mod}+period" = "exec i3-msg split vertical";
        "${mod}+q" = "exec i3-msg exit";

        # Workspaces
        "${mod}+1" = "workspace 1";
        "${mod}+2" = "workspace 2";
        "${mod}+3" = "workspace 3";
        "${mod}+4" = "workspace 4";
        "${mod}+5" = "workspace 5";
        "${mod}+6" = "workspace 6";
        "${mod}+7" = "workspace 7";
        "${mod}+8" = "workspace 8";
        "${mod}+9" = "workspace 9";

        # Move focused window to workspace
        "${mod}+Shift+1" = "move container to workspace 1";
        "${mod}+Shift+2" = "move container to workspace 2";
        "${mod}+Shift+3" = "move container to workspace 3";
        "${mod}+Shift+4" = "move container to workspace 4";
        "${mod}+Shift+5" = "move container to workspace 5";
        "${mod}+Shift+6" = "move container to workspace 6";
        "${mod}+Shift+7" = "move container to workspace 7";
        "${mod}+Shift+8" = "move container to workspace 8";
        "${mod}+Shift+9" = "move container to workspace 9";

        # Screen management
        "${mod}+w" = "focus output HDMI-1";
        "${mod}+e" = "focus output HDMI-2";
        "${mod}+r" = "focus output HDMI-3";

        "${mod}+Shift+w" = "move container to output HDMI-1";
        "${mod}+Shift+e" = "move container to output HDMI-2";
        "${mod}+Shift+r" = "move container to output HDMI-3";
      };
    };
  };
}
