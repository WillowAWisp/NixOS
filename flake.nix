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
          ./System/Hosts/Overworld/configuration.nix # System specific configuration
          ./System/Hosts/Overworld/hardware.nix # System specific configuration
	  ./System/Packages/Develop # Development packages
	  ./System/Packages/Base # Base packages
	  ./System/Packages/BspWM # Going to move over to this, need both atm so not in base
          ./Users/Willow # My user
          ./Users/Admin # Root
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
