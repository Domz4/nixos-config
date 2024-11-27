{
  pkgs,
  inputs,
  ...
}:
{
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/shades-of-purple.yaml";
    # *** CUSTOM THEME ***

    # base16Scheme = {
    #   base00 = "#091212";
    #   base01 = "#c9184A";
    #   base02 = "#3C403F";
    #   base03 = "#011627";
    #   base04 = "#9d0208";
    #   base05 = "#B7094C";
    #   base06 = "#e01E37";
    #   base07 = "#73949C";
    #   base08 = "#ff0055";
    #   base09 = "#c83332";
    #   base0A = "#3edb84";
    #   base0C = "#11ccaa";
    #   base0B = "#ddb350";
    #   base0E = "#aF8DfA";
    #   base0D = "#FF0033";
    #   base0F = "#FF0011";
    # };

    # THEME FROM WALLPAPER
    image = ./wallpaper.jpg;

    # # FONTS
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };

      sansSerif = {
        package = pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; };
        name = "Iosevka Nerd Font";
      };

      serif = {
        package = pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; };
        name = "Iosevka Nerd Font";
      };

      # sizes = {
      #   applications = 14;
      #   terminal = 18;
      #   desktop = 12;
      #   popups = 10;
      # };
    };
  };
}
