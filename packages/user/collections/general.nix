{
  pkgs,
  config,
  lib,
  inputs,
  ...
}:
{
  programs.lazygit.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.packages = with pkgs; [
    kitty
    killall
    fzf
    xclip
    htop
    ripgrep
    fd
    eza
    zoxide
    ffmpeg
    wget
    zip
    unzip
    yt-dlp
    xmonad-log
  ];
}
