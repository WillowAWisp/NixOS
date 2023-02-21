{
  description = "NixOS System Configuration Flake";
  
  inputs = {
    
    # Package repositories.
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, ... } @ inputs: {
    nixosConfigurations = {
      overworld = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./System/Hosts/Overworld/configuration.nix
          ./System/Hosts/Overworld/hardware.nix
	  ./System/Packages/Develop
	  ./System/Packages/Base
          ./Users/Willow
          ./Users/Admin
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
