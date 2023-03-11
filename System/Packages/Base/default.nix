{ pkgs, config, ... }: {
  # Base packages on all my machines.
  
  environment.systemPackages = with pkgs; [
    pulsemixer
    killall
    firefox
    neovim
    pamixer
    discord
    spotify
    btop
    obsidian
  ];
}
