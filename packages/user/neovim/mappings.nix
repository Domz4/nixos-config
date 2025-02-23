{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options.silent = true;
      options.desc = "general save file";
    }
    {
      mode = "n";
      key = "gl";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      options.desc = "flaot lsp error";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Telescope harpoon marks<CR>";
      options.desc = "harpoon marks";
    }
    {
      mode = "n";
      key = "<leader>y";
      action = "<cmd> %y <CR>";
      options.desc = "copy entire file";
    }
    {
      mode = "n";
      key = "<leader>h";
      action = "<cmd> nohlsearch <CR>";
      options.desc = "clear search result";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd> Telescope <CR>";
      options.desc = "Telescope";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Trouble";
    }
    {
      mode = "n";
      key = "<leader>tx";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }
    # {
    #   mode = "n";
    #   key = "<leader>ts";
    #   action = "lua require(\"base46\").toggle_transparency()";
    #   options.desc = "Toggle transparency";
    # }
    {
      mode = "n";
      key = ";";
      action = ":";
      options.desc = "enter command mode";
      options.nowait = true;
    }
    {
      mode = "n";
      key = "<A-k>";
      action = ":m .-2<CR>==";
    }
    {
      mode = "n";
      key = "<A-j>";
      action = ":m .+1<CR>==";
    }
    {
      mode = "n";
      key = "<C-q>";
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
    }
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<CR>gv-gv";
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<CR>gv-gv";
    }
    {
      mode = "i";
      key = "<A-j>";
      action = "<Esc>:m .+1<CR>==gi";
    }
    {
      mode = "i";
      key = "<A-k>";
      action = "<Esc>:m .-2<CR>==gi";
    }
    {
      mode = "n";
      key = "<leader>le";
      action = "<cmd> Neotree toggle float <CR>";
      options.desc = "Toggle neotree";
    }
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>DapToggleBreakpoint<CR>";
      options.desc = "Toggle Dap Breakpoint";
    }
    {
      mode = "n";
      key = "<A-i>";
      action = "<cmd> ToggleTerm direction=float <CR>";
      options.desc = "Toggle term float mode";
    }
    {
      mode = "i";
      key = "<A-i>";
      action = "<cmd> ToggleTerm direction=float <CR>";
      options.desc = "Toggle term float mode";
    }
    {
      mode = "t";
      key = "<A-i>";
      action = "<cmd>ToggleTermToggleAll<CR>";
      options.desc = "close terminal";
    }
    {
      mode = "n";
      key = "<A-h>";
      action = "<cmd> ToggleTerm direction=horizontal <CR>";
      options.desc = "Toggle term horizontal mode";
    }
    {
      mode = "n";
      key = "<A-v>";
      action = "<cmd> ToggleTerm direction=vertical <CR>";
      options.desc = "Toggle term vertical mode";
    }
    {
      mode = "n";
      key = "<leader>dp";
      action = "lua require(\"dap-python\").test_method()";
      options.desc = "Trigger debug tests";
    }
    {
      mode = "n";
      key = "<leader>th";
      action = "<cmd>Telescope themes<CR>";
      options.desc = "Change theme";
    }
  ];
}
