{
  pkgs,
  config,
  ...
}:
{
  services.xserver.windowManager.xmonad = {
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
}
