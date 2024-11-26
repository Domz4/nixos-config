{
  pkgs,
  inputs,
  ...
}:
{
  stylix = {
    enable = true;

    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    # *** CUSTOM THEME ***
    base16Scheme = {
      base00 = "1A1B26";
      base01 = "16161E";
      base02 = "2F3549";
      base03 = "444B6A";
      base04 = "787C99";
      base05 = "A9B1D6";
      base06 = "CBCCD1";
      base07 = "D5D6DB";
      base08 = "C0CAF5";
      base09 = "A9B1D6";
      base0A = "0DB9D7";
      base0B = "9ECE6A";
      base0C = "B4F9F8";
      base0D = "2AC3DE";
      base0E = "BB9AF7";
      base0F = "F7768E";
    };

    # THEME FROM WALLPAPER
    image = ./wallpaper.jpg;

    # FONTS
    fonts = {
      monospace = {
        package = pkgs.monaspace.override { fonts = [ "Monaspace Krypton" ]; };
        name = "Monaspace Krypton";
      };

      sansSerif = {
        package = pkgs.monaspace.override { fonts = [ "Monaspace Krypton" ]; };
        name = "Monaspace Krypton";
      };

      serif = {
        package = pkgs.monaspace.override { fonts = [ "Monaspace Krypton" ]; };
        name = "Monaspace Krypton";
      };

      sizes = {
        applications = 14;
        terminal = 18;
        desktop = 12;
        popups = 10;
      };
    };
  };
}
