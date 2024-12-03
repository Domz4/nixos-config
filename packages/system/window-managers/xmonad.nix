{
  pkgs,
  config,
  ...
}:
{
  services.xserver = {
    enable = true;

    displayManager = {
      defaultSession = "none+xmonad";
      sddm.enable = true;
    };

    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
      config = ./xmonad.hs;
      extraPackages = haskellPackages: [
        haskellPackages.ghc
        haskellPackages.xmonad
        haskellPackages.xmonad-contrib
        haskellPackages.xmonad-extras
      ];
    };

  };
}
