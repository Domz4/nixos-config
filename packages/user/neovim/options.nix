{
  opts = {
    number = true;
    relativenumber = true;
    wrap = true;
  };

  extraConfigLua = ''
    vim.o.foldenable = false
    vim.wo.fillchars='eob: '
  '';
}
