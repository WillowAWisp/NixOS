{ pkgs, config, ... }: {
  # Dev packages on my machines.
  
  environment.systemPackages = with pkgs; [
    jetbrains.clion
    callPackage ./jb-toolbox.nix { };
    clang
    cmake
    lldb
    git
  ];
}

