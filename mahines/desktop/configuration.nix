{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../packages/system/window-managers/xmonad.nix
    ../../packages/user/theaming/stylix.nix
    inputs.home-manager.nixosModules.default
  ];

  # TODO
  # move settings to it's relevant modules

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "corefonts"
    ];

  # Sound settings
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  stylix.enable = true;
  programs.zsh.enable = true;
  services.gvfs.enable = true;

  # bootloader settings
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # dekstop enviroment settings
  services.displayManager = {
    defaultSession = "none+xmonad";
  };
  security.polkit.enable = true;
  security.rtkit.enable = true;

  users.users.domzemahine = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
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

  fonts.packages = with pkgs; [
    nerdfonts
    corefonts
    cm_unicode
    monaspace
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
  ];

  time.timeZone = "Europe/Warsaw";
  system.stateVersion = "24.05";
}
