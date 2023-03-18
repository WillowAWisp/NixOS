{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    itch
    steam
    minecraft
  ];
}

