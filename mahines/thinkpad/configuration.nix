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
    ../../packages/user/theaming/stylix.nix
    inputs.home-manager.nixosModules.default
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "corefonts"
    ];

  programs.zsh.enable = true;
  stylix.enable = true;

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

  services.gvfs.enable = true;

  users.users.domzemahine = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      neovim
      firefox
      tree
    ];
  };

  fonts.packages = with pkgs; [
    nerdfonts
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
