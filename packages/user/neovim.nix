{
  pkgs,
  config,
  ...
}:
{
  xdg.configFile.nvim.source = ./nvim;
  xdg.configFile.nvim.enable = false;

  home.packages = with pkgs; [
    stylua
    nixfmt-rfc-style
  ];
}
