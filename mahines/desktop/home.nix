{ config, pkgs, ... }:

{
  imports = [
    ../../packages/user/window-managers/xmonad.nix
    ../../packages/user/polybar/polybar.nix
    ../../packages/user/shells/zsh.nix
    ../../packages/user/neovim.nix
    ../../packages/user/collections/general.nix
    ../../packages/user/file-managers/nautilus.nix
    ../../packages/user/file-managers/yazi.nix
    ../../packages/user/collections/desktop-environment.nix
  ];

  programs.home-manager.enable = true;

  home.username = "domzemahine";
  home.homeDirectory = "/home/domzemahine";
  home.stateVersion = "24.05";
}
