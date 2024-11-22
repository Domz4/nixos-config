{ config, pkgs, lib, ... }: let mod = "Mod4"; in 
{
	wayland.windowManager.sway = {
		enable = true;
		config = rec {
			modifier = mod;
			terminal =  "kitty";
			startup = [
				# commands run on launch
				# {command = "firefox";}
			];
			keybindings = lib.attrsets.mergeAttrsList [
				(lib.attrsets.mergeAttrsList (map (num: let
				  ws = toString num;
				in {
					"${mod}+${ws}" = "workspace ${ws}";
					"${mod}+Shift+${ws}" = "move to workspace ${ws}";
				}) [1 2 3 4 5 6 7 8 9]))
				{
				  "${mod}+Shift+x" = "kill";
				  "${mod}+Shift+r" = "exec swaymsg reload";
				}

			];
			bars = [];
			floating.titlebar = false;
		};
		systemd.enable = true;
		wrapperFeatures = {gtk = true;};
	};
	home.file.".hm-graphical-session".text = pkgs.lib.concatStringSep "\n" [
		"export MOZ_ENABLE_WAYLAND=1"
		"export NIXOS_OZONE_WL=1"
	];

}
