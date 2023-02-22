{ config, pkgs, ... }: {
  # Add bspwm.
  
  services.xserver.windowManager.bspwm.enable = true;
  
  # Add polybar, sxhkd, rofi, kitty, and feh
  
  environment.systemPackages = with pkgs; [
    polybar
    sxhkd
    kitty
    rofi
    feh
  ];
}
