{ pkgs, config, ... }: {
  # Base packages on all my machines.
  
  environment.systemPackages = with pkgs; [
    pulsemixer
    killall
    firefox
    steam
    neovim
    pamixer
    discord
    spotify
    btop
    obsidian
  ];
}
