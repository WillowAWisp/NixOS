{ pkgs, config, ... }: {
  
  nixpkgs.config.permittedInsecurePackages = [
    "electron-11.5.0"
  ];
  
  environment.systemPackages = with pkgs; [
    itch
    steam
    minecraft
  ];
}

