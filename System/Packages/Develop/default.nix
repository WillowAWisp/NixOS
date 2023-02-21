{ pkgs, config, ... }: {
  # Dev packages on my machines.
  
  environment.systemPackages = with pkgs; [
    jetbrains.clion
    clang
    cmake
    lldb
    git
  ];
}

