{ pkgs, config, ... }: {
  # Base packages on all my machines.
  
  environment.systemPackages = with pkgs; [
    killall
    firefox
    steam
    neovim
    discord
    spotify
  ];
}
