{
  pkgs,
  ...
}:{
  programs.nixvim = {
    enable = true;
    options = {
      number = true;
      relativenumber = true;
    };

    imports = [
	    ./plugins.nix
	    ./mappings.nix
	    ./options.nix
    ];
  };

  colorschemes.gruvbox.enable = true;
}
