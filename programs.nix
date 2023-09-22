{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  # add your personalized program configuration in ./user.nix   

  # Bling supplied programs 
    programs.starship.enable = true;

  # User specified programs 
    programs.dircolors.enable = true; 
    programs.fzf.enable = true; 
    programs.eza.enable = true; 
    programs.bat.enable = true; 
    programs.direnv.enable = true;

}
