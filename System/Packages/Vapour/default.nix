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
    polkit_gnome
    polybar
    picom
    sxhkd
    kitty
    rofi
    feh
  ];

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
	ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
	Restart = "on-failure";
	RestartSec = 1;
	TimeoutStopSec = 10;
      };
    };
  };
}
