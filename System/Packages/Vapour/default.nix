{ config, pkgs, ... }: {
  # Add bspwm and LightDM.
  
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager.bspwm.enable = true;

  # Add polybar, picom, sxhkd, rofi, kitty, jetbrains-mono, material-design-icons, unifont, and feh
  
  fonts.fonts = with pkgs; [
    material-design-icons
    jetbrains-mono
    unifont
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
