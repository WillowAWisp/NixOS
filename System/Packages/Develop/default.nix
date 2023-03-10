{ pkgs, config, ... }: {
  # Dev packages on my machines.
  
  jb-toolbox = import ./jb-toolbox

  environment.systemPackages = with pkgs; [
    jetbrains.clion
    callPackage ./jb-toolbox
    clang
    cmake
    lldb
    git
  ];
}

