{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libclang
    libgcc
    devenv
  ];
}
