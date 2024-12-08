{
  pkgs,
  config,
  ...
}:
{

  # xdg.configFile.nvim.source = ./nvim;
  # xdg.configFile.nvim.enable = false;

  programs.neovim = {
    enable = true;
    plugins = [
      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
    ];
  };

  home.packages = with pkgs; [
    stylua
    nixfmt-rfc-style
  ];
}
