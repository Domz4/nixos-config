{ pkgs, ... }:
{
  plugins.none-ls = {
    enable = true;
    sources = {
      # code_actions = {
      #   statix.enable = true;
      # };

      diagnostics = {
        statix.enable = true;
      };

      formatting = {
        # google_java_format = {
        #   enable = true;
        #   package = pkgs.google-java-format;
        # };

        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
      };

    };

    settings = {
      on_attach = ''
        function(client, bufnr)
          if client.supports_method "textDocument/formatting" then
            vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format { bufnr = bufnr }
              end,
            })
          end
        end
      '';
    };
  };
}
