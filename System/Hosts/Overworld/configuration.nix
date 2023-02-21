{ config, ...}: {
  # Allow unfree packages

  nixpkgs.config.allowUnfree = true;

  # Enable systemd-boot
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # Networking setup
  
  networking.hostName = "overworld";
  networking.networkmanager.enable = true;
  
  # Timezone
  
  time.timeZone = "America/New_York";
  
  # Enable xorg and gnome
  
  services.xserver.enable = true;
  
  services.xserver.displayManager.gdm.enable = true;
  
  services.xserver.desktopManager.gnome.enable = true;
  
  services.xserver.videoDrivers = [ "nvidia" ];
  
  hardware.opengl.enable = true;
  
  hardware.opengl.driSupport = true;
  
  hardware.opengl.driSupport32Bit = true;

  # Enable sound and Setup Pipewire
  
  sound.enable = true;
  
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    alsa.support32Bit = true;
  };
  
  hardware.pulseaudio.enable = false;

  # Disable mutable users
  
  users.mutableUsers = false;
  
  # Persist machine-id
  
  environment.etc."machine-id".source = "/nix/persist/etc/machine-id";
  
  # Persist system connections.
  
  environment.etc."NetworkManager/system-connections".source = "/nix/persist/etc/NetworkManager/system-connections";
  
  # Persist bluetooth connections.
  
  systemd.tmpfiles.rules = [
    "L /var/lib/bluetooth - - - - /nix/persist/var/lib/bluetooth"
  ];
  
  # Set nixos state version
  
  system.stateVersion = "22.11";
}
