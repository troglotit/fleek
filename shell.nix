{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    programs.exa.enableAliases = true;
    
    programs.exa.extraOptions = [
   "--group-directories-first"
   "--header"
];
    
    programs.bat.config = {
  theme = "TwoDark";
};
    # fish}
