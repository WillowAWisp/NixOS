{ config, pkgs, ... }: {
  # Add bspwm.
  
  services.xserver.windowManager.bspwm.enable = true;
  
  # Add polybar, picom, sxhkd, rofi, kitty, and feh
  
  environment.systemPackages = with pkgs; [
    polybar
    picom
    sxhkd
    kitty
    rofi
    feh
  ];
}
