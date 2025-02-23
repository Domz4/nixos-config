{ self, pkgs, ... }:
let
  nvui = pkgs.vimUtils.buildVimPlugin {
    name = "nvchad-ui";
    src = pkgs.fetchFromGitHub {
      owner = "NvChad";
      repo = "ui";
      rev = "7905539f1e10f460811dc0db800355611f8a527a";
      hash = "sha256-qvheXNmJ0rDDGurf23sdP4XE8TrLAEFqYghXfe/rUgE=";
    };
  };

  telescope-themes = pkgs.vimUtils.buildVimPlugin {
    name = "telescope-themes";
    src = pkgs.fetchFromGitHub {
      owner = "andrewberty";
      repo = "telescope-themes";
      rev = "9b7c368b83b82b53c0a6e9e977f8329e5f1fe269";
      hash = "sha256-L3XsAEtJdEkYaCZwDqS6+khgQy1JLWrZX2xntyBD968=";
    };
  };
in
{
  extraPlugins =
    with pkgs.vimPlugins;
    [
      aurora
      ayu-vim
      adwaita-nvim
      boo-colorscheme-nvim
      bluloco-nvim
      catppuccin-nvim
      citruszest-nvim
      cyberdream-nvim
      dracula-nvim
      doom-one-nvim
      embark-vim
      everforest
      jellybeans-nvim
      kanagawa-nvim
      monokai-pro-nvim
      miasma-nvim
      midnight-nvim
      night-owl-nvim
      nightfox-nvim
      nightly-nvim
      nord-nvim
      neovim-ayu
      oceanic-next
      oceanic-material
      onenord-nvim
      onedarkpro-nvim
      oxocarbon-nvim
      palenightfall-nvim
      poimandres-nvim
      rose-pine
      sonokai
      solarized-nvim
      starrynight
      tokyonight-nvim
      vscode-nvim
      vim-horizon
    ]
    ++ [
      # base46
      # nvui
      telescope-themes
    ];

}
