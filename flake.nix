{
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  description = "Fleek Configuration";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Fleek
    fleek.url = "github:ublue-os/fleek";

    # Overlays
    

  };

  outputs = { self, nixpkgs, home-manager, fleek, ... }@inputs: {

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
          ./DESKTOP-C9O7JV2/DESKTOP-C9O7JV2.nix
          ./DESKTOP-C9O7JV2/user.nix
          # self-manage fleek
          ({
           nixpkgs.overlays = [];
           home.packages = [
            fleek.packages.x86_64-linux.default
          ];
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
          ./ntrn1703/ntrn1703.nix
          ./ntrn1703/user.nix
          # self-manage fleek
          ({
           nixpkgs.overlays = [];
           home.packages = [
            fleek.packages.x86_64-linux.default
          ];
          })

        ];
      };
      
    };
  };
}
