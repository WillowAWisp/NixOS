{ config, ... }: {
  # Import user password.
  
  imports = [ ./password.nix ];
  
  users.users.wbracker = {
    isNormalUser = true;
    home = "/home/wbracker";
    description = "Willow Bracker";
    extraGroups = [ "wheel" ];
  };
}
