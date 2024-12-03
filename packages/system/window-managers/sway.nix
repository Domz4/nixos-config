{
  config,
  pkgs,
  lib,
  ...
}:
let
  mod = "Mod4";
in
{
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = mod;
      terminal = "kitty";
    };

  };

}
