{ config, ... }: {
  users.users.wbracker = {
    isNormalUser = true;
    home = "/home/wbracker";
    description = "Willow Bracker";
    extraGroups = [ "wheel" ];
    passwordFile = "/nix/persist/passwords/wbracker"
  };
}
