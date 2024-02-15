{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    programs.eza.enableAliases = true;
    
    programs.eza.extraOptions = [
   "--group-directories-first"
   "--header"
];
    
    programs.bat.config = {
  theme = "TwoDark";
};
    # fish
  programs.fish.enable = true;
}
