{ config, pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
      
    };
  };

  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.helix
    pkgs.stack
    pkgs.gcc
    pkgs.unzip
    pkgs.ffmpeg
    pkgs.neofetch
    pkgs.neovim
    pkgs.lazygit
    pkgs.jq
    pkgs.btop
    pkgs.vifm
    pkgs.ripgrep
    pkgs.emacs
    pkgs.gdu
    pkgs.bottom
    pkgs.exif
    pkgs.gnumake
    pkgs.rustup
    pkgs.inotify-tools
    pkgs.nushell
    pkgs.volta
    pkgs.deno
    pkgs.bun
    pkgs.typst
    pkgs.bzip2
    pkgs.postgresql_15_jit
    pkgs.xsv
    pkgs.fish
    pkgs.poetry
    pkgs.rye
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    pkgs.fzf
    pkgs.ripgrep
    pkgs.lazygit
    pkgs.jq
    pkgs.yq-go
    pkgs.neovim
    pkgs.neofetch
    pkgs.btop
    pkgs.cheat
    pkgs.just
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
