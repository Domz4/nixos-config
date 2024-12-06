{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libclang
    devenv
  ];
}
