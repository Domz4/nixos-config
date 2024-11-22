{  
  pkgs,
  config,
  lib,
  ...
}:

let
	mod = "Mod4";
in {
	xsession.windowManager.i3 = {
		enable = true;
		package = pkgs.i3-gaps;
		config = {
			modifier = mod;
			gaps = {
				inner = 5;
				outer = 5;
			};
			keybindings = lib.mkOptionDefault {
				"${mod}+t" = "exec kitty";
				"${mod}+Shift+x" = "kill";
				"${mod}+j" = "focus left" ;
				"${mod}+k" = "focus right" ;
				# "${mod}" = "" ;
			};

		};
	};
}
