{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    home.username = "aargunov";
    home.homeDirectory = "/home/aargunov";
    programs.git = {
        enable = true;
        aliases = {
            pushall = "!git remote | xargs -L1 git push --all";
            graph = "log --decorate --oneline --graph";
            add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
        };
        userName = "aargunov";
        userEmail = "alexander.argunov@tern.ru";
        extraConfig = {
            feature.manyFiles = true;
            init.defaultBranch = "main";
            gpg.format = "ssh";
        };

        signing = {
            key = "~/.ssh/id_ed25519";
            signByDefault = builtins.stringLength "~/.ssh/id_ed25519" > 0;
        };

        lfs.enable = true;
        ignores = [ ".direnv" "result" ];
  };
}
