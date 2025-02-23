{
  imports = [
    ./ui/ui-plugins.nix
    ./plugins/cmp.nix
    ./plugins/harpoon.nix
    ./plugins/lspconfig.nix
    ./plugins/none-ls.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
  ];
  plugins = {
    nvim-autopairs = {
      enable = true;
      settings = {
        fast_wrap = {
          end_key = "$";
          map = "<C-a>";
        };
      };
    };

    nvim-colorizer.enable = true;
    gitsigns.enable = true;
    barbecue.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;
    toggleterm.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;

    neo-tree = {
      enable = true;
      window.position = "float";
    };

  };
}
