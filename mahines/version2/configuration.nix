{ config, lib, pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];

   nix.settings.experimental-features = ["nix-command" "flakes"];

   nixpkgs.config.allowUnfreePredicate = pkg:
   	builtins.elem (lib.getName pkg) [
		"corefonts"
	];

   security.polkit.enable = true;
   security.rtkit.enable = true;

   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;

   services.xserver = {
	enable = true;
	windowManager.i3.enable = true;
   };

   services.displayManager = {
   	defaultSession = "none+i3";
   };

   users.users.domzemahine = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     packages = with pkgs; [
       neovim
       firefox
       tree
     ];
   };

   fonts.packages = with pkgs; [
   	(pkgs.nerdfonts.override {fonts = ["Iosevka" "JetBrainsMono" "FiraCode"]; })
	corefonts
	cm_unicode
	monaspace
   ];

   home-manager = {
     extraSpecialArgs = {
        inherit inputs;
     };
     users = {
     "domzemahine" = import ./home.nix;
     };
   };

   environment.systemPackages = with pkgs; [
     vim
     wget
     git
   ];


   time.timeZone = "Europe/Warsaw";
   system.stateVersion = "24.05";
}

