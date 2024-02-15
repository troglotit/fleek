{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  # programs.exa.enableAliases = true;
  programs.eza.enableAliases = true;
  programs.direnv.nix-direnv.enable = true;
  users.aargunov.shell = pkgs.fish;
}
