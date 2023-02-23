{ config, pkgs, ... }: {
  # Add bspwm.
  
  services.xserver.windowManager.bspwm.enable = true;
  
  # Add polybar, picom, sxhkd, rofi, kitty, jetbrains-mono, and feh
  
  fonts.fonts = with pkgs; [
    nerdfonts
  ];

  environment.systemPackages = with pkgs; [
    polybar
    picom
    sxhkd
    kitty
    rofi
    feh
  ];
}
