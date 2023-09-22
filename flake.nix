{
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  description = "Fleek Configuration";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "https://flakehub.com/f/nix-community/home-manager/0.1.tar.gz";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Fleek
    fleek.url = "https://flakehub.com/f/ublue-os/fleek/*.tar.gz";

    # Overlays
    

  };

  outputs = { self, nixpkgs, home-manager, fleek, ... }@inputs: {
    
     packages.x86_64-linux.fleek = fleek.packages.x86_64-linux.default;
    
    # Available through 'home-manager --flake .#your-username@your-hostname'
    
    homeConfigurations = {
    
      "troglotit@DESKTOP-C9O7JV2" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./DESKTOP-C9O7JV2/troglotit.nix
          ./DESKTOP-C9O7JV2/custom.nix
          # self-manage fleek
          {
            home.packages = [
              fleek.packages.x86_64-linux.default
            ];
          }
          ({
           nixpkgs.overlays = [];
          })

        ];
      };
      
      "aargunov@ntrn1703" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./ntrn1703/aargunov.nix
          ./ntrn1703/custom.nix
          # self-manage fleek
          {
            home.packages = [
              fleek.packages.x86_64-linux.default
            ];
          }
          ({
           nixpkgs.overlays = [];
          })

        ];
      };
      
    };
  };
}
