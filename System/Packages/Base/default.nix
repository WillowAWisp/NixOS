{ pkgs, config, ... }: {
  # Base packages on all my machines.
  
  environment.systemPackages = with pkgs; [
    firefox
    steam
    neovim
    discord
  ];
}
