{ pkgs, config, overlays, customization, ... }: {
  # Dev packages on my machines.
  
  jb-toolbox = callPackage ./jb-toolbox.nix { };

  environment.systemPackages = with pkgs; [
    jetbrains.clion
    clang
    cmake
    lldb
    git
  ];
}

