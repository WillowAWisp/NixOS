{ config, pkgs, ... }: {
  # Add bspwm.
  
  services.xserver.windowManager.bspwm.enable = true;
  
  # Add polybar, sxhkd, rofi, and feh
  
  environment.systemPackages = with pkgs; [
    polybar
    sxhkd
    rofi
    feh
  ];
}
