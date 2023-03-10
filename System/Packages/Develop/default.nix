{ pkgs, config, ... }: {
  # Dev packages on my machines.
  
  environment.systemPackages = with pkgs; [
    jetbrains.clion
    vscode
    clang
    cmake
    meson
    lldb
    git
  ];
}

