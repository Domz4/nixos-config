{
 pkgs,
 config,
 lib,
 inputs,
 ...
}: {
  programs.lazygit.enable = true;

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  home.packages = with pkgs; [
    kitty
    fzf
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
  ]
}
