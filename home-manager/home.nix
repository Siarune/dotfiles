{
  config,
  pkgs,
  lib,
  username,
  stateVersion,
  ...
}: {
  imports = [
    ./pkg.nix
    ./sh.nix
    ];

  home = {
    inherit username stateVersion;
    homeDirectory = "/home/${username}";

    file = {};
    sessionVariables = {};
  };

  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;
}
