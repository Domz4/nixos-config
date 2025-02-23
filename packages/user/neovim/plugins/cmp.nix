{ helpers, ... }:

{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "buffer"; }
      { name = "ulitsnips"; }
      { name = "nvim_lua"; }
      { name = "path"; }
    ];

    settings.mapping = (
      helpers.mkRaw ''
        cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),

          ["<c-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
          ["<c-d>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),

          ["<C-e>"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),

          ["<CR>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true},

          ["<C-l>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            elseif luasnip.jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<C-h>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        })
      ''
    );
  };

  plugins = {
    cmp-nvim-ultisnips.enable = true;
    friendly-snippets.enable = true;
    luasnip.enable = true;
    lspkind = {
      enable = true;
      cmp = {
        enable = true;
        menu = {
          buffer = "";
          calc = "";
          cmdline = "";
          codeium = "󱜙";
          emoji = "󰞅";
          git = "";
          luasnip = "";
          neorg = "";
          nvim_lsp = "";
          nvim_lua = "";
          path = "";
          spell = "";
          treesitter = "🌲";
        };
      };
    };
  };

}
