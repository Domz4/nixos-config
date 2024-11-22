{ config, pkgs, ... }:

{
  imports = [
  	../../packages/user/window-managers/i3.nix
  	../../packages/user/shells/zsh.nix
  ];
  home.username = "domzemahine";
  home.homeDirectory = "/home/domzemahine";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
	kitty
  ];

  home.file = {
  };

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
