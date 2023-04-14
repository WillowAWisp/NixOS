{ config, modulesPath, lib, ... }: {
  # Import undetected hardware
  
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
  
  # Boot.
  
  boot.initrd.availableKernelModules = [ "nvme" "ahci" "xhci_pci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" "vfio_pci" "vfio" "vfio_iommu_type1" "vfio_virqfd" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];
  
  boot.kernelParams = [
    "amd_iommu=on"
    "iommu=pt"
    "vfio-pci.ids=1002:73df,1002:ab28"
  ];

  # Filesystems.
  
  fileSystems."/" = {
    device = "none";
    fsType = "tmpfs";
    options = [ "defaults" "size=4G" "mode=755" ];
  };
  
  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/4D50-9146";
    fsType = "vfat";
  };
  
  fileSystems."/nix" = {
    device = "/dev/disk/by-uuid/ee047361-71a3-448c-a664-cc6fb2c1a94a";
    fsType = "xfs";
    neededForBoot = true;
  };
  
  fileSystems."/etc/nixos" = {
    device = "/nix/persist/etc/nixos";
    fsType = "none";
    options = [ "bind" ];
  };
  
  fileSystems."/var/log" = {
    device = "/nix/persist/var/log";
    fsType = "none";
    options = [ "bind" ];
  };
  
  fileSystems."/var/lib/bluetooth" = {
    device = "/persist/var/lib/bluetooth";
    options = [ "bind" "noauto" "x-systemd.automount" ];
    noCheck = true;
  };
  
  fileSystems."/home" = {
    device = "/nix/persist/home";
    fsType = "none";
    options = [ "bind" ];
  };
  
  swapDevices = [ ];
  
  # Networking.
  
  networking.useDHCP = lib.mkDefault true;
  
  # HiDPI.
  
  hardware.video.hidpi.enable = true;

  # Enable all firmware for wireless cards etc.

  hardware.enableAllFirmware = true;

  # Enable Index Drivers.
  hardware.steam-hardware.enable = true;
}
