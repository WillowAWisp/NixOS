{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    steam
    minecraft
  ];
}

