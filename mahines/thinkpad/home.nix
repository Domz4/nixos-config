{ config, pkgs, ... }:

{
  imports = [
    ../../packages/user/window-managers/i3.nix
    ../../packages/user/shells/zsh.nix
    ../../packages/user/neovim.nix
    ../../packages/user/collections/general.nix
    ../../packages/user/file-managers/nautilus.nix
    ../../packages/user/file-managers/yazi.nix
  ];

  programs.home-manager.enable = true;

  home.username = "domzemahine";
  home.homeDirectory = "/home/domzemahine";
  home.stateVersion = "24.05";
}
