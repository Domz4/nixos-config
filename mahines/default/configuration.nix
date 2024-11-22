{ config, lib, pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];

   nix.settings.experimental-features = ["nix-command" "flakes"];
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;

   security.polkit.enable = true;
   security.pam.services.swaylock = {};

   programs.dconf.enable = true;
   hardware.opengl.enable = true;


  # Enable sound.
  # hardware.pulseaudio.enable = true;
  # OR
  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  # };


   services.greetd = {
     enable = true;
     settings = {
	default_session = {
	  command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
	  user = "domzemahine";
	};
     };
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

   home-manager = {
     extraSpecialArgs = {
        inherit inputs;
     };
     users = {
     "domzemahine" = import ./home.nix;
     };
   };

   environment.sessionVariables = rec {
     WLR_NO_HARDWARE_CURSORS="1";
     WLR_RENDERER_ALLOW_SOFTWARE="1";
     NIXOS_OZONE_WL="1";
   };


   environment.systemPackages = with pkgs; [
     vim
     sway
     grim
     mako
     slurp
     wget
   ];

   services.gnome.gnome-keyring.enable = true;

   time.timeZone = "Europe/Warsaw";
    # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
   system.stateVersion = "24.05";
}

