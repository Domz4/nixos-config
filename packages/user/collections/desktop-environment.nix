{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    rofi
    picom
    inputs.nixvim.packages.${pkgs.system}.default
  ];
}
