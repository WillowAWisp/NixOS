{ pkgs, config, ... }: {
  # VM Support
  
  virtualisation.libvirtd.enable = true;
  
  environment.systemPackages = with pkgs; [
    looking-glass-client
    virtmanager
  ];
}
