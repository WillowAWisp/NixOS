{ config, pkgs, ... }: {
  # Add bspwm.
  
  services.xserver.windowManager.bspwm.enable = true;
  
  # Add polybar, picom, sxhkd, rofi, kitty, jetbrains-mono, material-design-icons, and feh
  
  fonts.fonts = with pkgs; [
    material-design-icons
    jetbrains-mono
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
