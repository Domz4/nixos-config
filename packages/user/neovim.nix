{pkgs, config, ...}: {
	xdg.configFile.nvim.source = ./nvim;
  xdg.configFile.nvim.enable = false;
}
