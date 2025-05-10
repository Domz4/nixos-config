{
  pkgs,
  inputs,
  ...
}:
{
  stylix = {
    enable = true;
    #targets.nixvim.enable = false;

    # base16Scheme = "${pkgs.base16-schemes}/share/themes/shades-of-purple.yaml";
    # *** CUSTOM THEME ***

    base16Scheme = {
      base00 = "#101010";
      base01 = "#171717";
      base02 = "#3e223e";
      base03 = "#252525";
      base04 = "#2c2c2c";
      base05 = "#d8d9dd";
      base06 = "#ff0040";
      base07 = "#cccdd1";
      base08 = "#2a9d8f";
      base09 = "#ff004d";
      base0A = "#e9c46a";
      base0B = "#f4a261";
      base0C = "#e76e51";
      base0D = "#901430";
      base0E = "#ffffff";
      base0F = "#ffccaa";
    };

    # THEME FROM WALLPAPER
    image = ./wallpaper.jpeg;

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
