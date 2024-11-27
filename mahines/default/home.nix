{ config, pkgs, ... }:

{
  imports = [
    ../../packages/user/window-managers/sway.nix
  ];
  home.username = "domzemahine";
  home.homeDirectory = "/home/domzemahine";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
    kitty
  ];

  home.file =
    {
    };

  home.sessionVariables = {
    EDITOR = "emacs";
    XDG_CURRENT_DESKTOP = "sway";
  };

  programs.home-manager.enable = true;
}
