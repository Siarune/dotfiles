{
  description = "Sia's home-manager configuration";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs?ref=nixos-23.05;
    home-manager = {
      url = github:nix-community/home-manager/release-23.05;
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify-nix.url = github:the-argus/spicetify-nix;
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    spicetify-nix,
  } @ inputs: let
    username = "sia";
    hostname = "Gar";

    homeConfigUserString = "${username}@${hostname}";

    supportedSystems = ["x86_64-linux"];
    genSystems = nixpkgs.lib.genAttrs supportedSystems;
    pkgs = genSystems (system: import nixpkgs {inherit system;});
    stateVersion = "23.05";

  in {
    packages = genSystems (system: {
      homeConfigurations.${homeConfigUserString} = home-manager.lib.homeManagerConfiguration {
        pkgs = pkgs.${system};
        modules = [./home.nix];
        extraSpecialArgs =
          inputs
          // {
            inherit username stateVersion;
          };
      };
    });
  };
}
