{ pkgs, config, ... }: {
  # Dev packages on my machines.
  
  environment.systemPackages = with pkgs; [
    jetbrains.clion
    clang
    cmake
    meson
    ninja
    lldb
    git
  ];
}

