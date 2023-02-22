{ config, pkgs, ... }: {
  # Add bspwm and sxhkd.
  
  services.xserver.windowManager.bspwm.enable = true;
  services.sxhkd.enable = true;
  
  # Add polybar, sxhkd, rofi, and feh
  
  environment.systemPackages = with pkgs; [
    polybar
    rofi
    feh
  ];
}
