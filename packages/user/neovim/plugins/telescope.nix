{ pkgs, ... }:
{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options.desc = "Find files";
      };
    };
  };
}
