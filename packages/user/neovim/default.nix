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

    colorschemes.gruvbox.enable = true;

    imports = [
	    ./plugins.nix
	    ./mappings.nix
	    ./options.nix
    ];
  };

}
