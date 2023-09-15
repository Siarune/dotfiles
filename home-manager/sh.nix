{
lib,
...
}: {

  programs.nushell = {
    enable = true;
    configFile.source = ./templates/config.nu;
    envFile.source = ./templates/env.nu;
    shellAliases = {
      c = "clear";
      x = "exit";
      ".." = "cd ..";
      link = "^ln -s";
      path = "echo $env.PATH";
      nn = "pnpm";
      up = "nix-channel --update";
      reflake = "nix flake update";
      rebuild = "home-manager build";
      refresh = "home-manager switch -b bk";
      remake = "sudo nixos-rebuild switch";
    };
  };

  programs.bash = {
    enable = true;
#     enableCompletion = true;
    bashrcExtra = lib.concatStrings [
      "export PATH=\"/home/sia/.local/bin:$PATH\""
    ];
    shellAliases = {
      c = "clear";
      x = "exit";
      ".." = "cd ..";
      path = "echo $PATH";
      reflake = "nix flake update";
      rebuild = "home-manager build";
      refresh = "home-manager switch";
      remake = "sudo nixos-rebuild switch";
    };
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    settings = {
#       min_time = 1000;
      format = lib.concatStrings [
        "$status"
        "  $character"
      ];
      right_format = lib.concatStrings [
        "$cmd_duration"
        "$directory"
        "$nix_shell"
        "$git_branch"
        "$package"
      ];
    };
  };

  programs.atuin = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = false;
    flags = [
      "--disable-up-arrow"
    ];
    settings = {
      update_check = false;
    };
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
  };
}
