{
  inputs = {
    # NixOS official package source, using the nixos-unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    inputs.hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    spicetify-nix.url = "github:the-argus/spicetify-nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, catppuccin, home-manager, spicetify-nix, ... }@inputs:
  let
    username = "awoeeq";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      ${username} = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [ 
	  (import ./main)
          #specialArgs = { host="${username}"; inherit inputs username spicetify-nix ; };
	  catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager
          {
            home-manager = {
	      useGlobalPkgs = true;
              useUserPackages = true;
	      extraSpecialArgs = { inherit inputs; };
              users.${username} = {
	        imports = [
                  ./modules/home
                  catppuccin.homeManagerModules.catppuccin
                ];
		home.username = "${username}";
		home.homeDirectory = "/home/${username}";
                home.stateVersion = "24.11";
              };
            };
          }
	];
      };
    };
  };
}
