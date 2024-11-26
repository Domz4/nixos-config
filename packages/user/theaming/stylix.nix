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
    # 
    base16Scheme = {
      base00 = "091212";
      base01 = "242B2A";
      base02 = "3C403F";
      base03 = "4E5150";
      base04 = "62d6e8";
      base05 = "DEFFFC";
      base06 = "ffffff";
      base07 = "73949C";
      base08 = "309Cb7";
      base09 = "95BBC4";
      base0A = "3edb84";
      base0B = "ddb350";
      base0C = "9bf9fd";
      base0E = "aF8DfA";
      base0D = "FF0055";
      base0F = "FFFFFF";
    };

    # THEME FROM WALLPAPER
    image = ./wallpaper.jpg;

    # # FONTS
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; };
        name = "Iosevka Nerd Font";
      };

      sansSerif = {
        package = pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; };
        name = "Iosevka Nerd Font";
      };

      serif = {
        package = pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; };
        name = "Iosevka Nerd Font";
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
