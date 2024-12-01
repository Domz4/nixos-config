{
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    rofi
    picom
  ];
}
