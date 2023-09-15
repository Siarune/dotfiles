{
  pkgs,
  spicetify-nix,
  ...
}: let
  spicePkgs = spicetify-nix.packages.${pkgs.system}.default;
in {

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  home.packages = with pkgs; [
    appimage-run
    btop
#     calibre
#     firefox
#     gamemode
#     heroic
    jetbrains.webstorm
    jetbrains.idea-ultimate
    kate
    keepassxc
    krita
    libreoffice-fresh
    libsForQt5.kdeconnect-kde
    gitkraken
    mpv
    nodePackages.pnpm
    nodejs_18
    obsidian
#     prismlauncher
#     protonup-qt
    q4wine
#     qbittorrent
    spicetify-cli
    temurin-bin-17
#     jdk
    thunderbird
    tor-browser-bundle-bin
    ventoy
    vscodium-fhs
    wine
    winetricks
    librewolf

    catppuccin-kde
#     catppuccin-gtk
    lightly-qt

    carapace
    fzf
    jujutsu
    ripgrep

    spotify-tray

    git-repo

    nodePackages.prisma
    prisma-engines
    nodePackages.vercel
    fnm
    jdt-language-server

    fira-code

  ];

  programs = {

  git = {
    enable = true;
    userName = "siarune";
    userEmail = "aidan.sharp@siarune.dev";

    signing = {
      key = null;
      signByDefault = true;
    };
  };

  neovim = {
    enable = true;
#     defaultEditor = true;
    viAlias = true;
#     vimAlias = true;

    plugins = with pkgs.vimPlugins; [
#       nvchad
#       nvchad-extensions
      catppuccin-nvim
    ];
  };

  spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin-mocha;
    colorScheme = "lavendar";

    enabledExtensions = with spicePkgs.extensions; [
        fullAppDisplay
        shuffle
        hidePodcasts
        bookmark
        copyToClipboard
        adblock
    ];

    enabledCustomApps = with spicePkgs.apps; [
      new-releases
      lyrics-plus
      localFiles
      marketplace
    ];
  };

  emacs = {
    enable = true;
  };

  helix = {
    enable = true;
#     defaultEditor = true;
    settings = {
      theme = "catppuccin_mocha";

      keys.normal = {
        space.w = ":w";
        space.q = ":q";
      };

      };

      languages = {
        language-server.java-language-server = with pkgs.jdt-language-server; {
          command = "jdt-language-server";
        };
    };
  };

  };

    gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Custom";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "rosewater" ];
        size = "standard";
        tweaks = [ "rimless" "black" ];
        variant = "mocha";
      };
    };
  };

  imports = [spicetify-nix.homeManagerModule];
}
