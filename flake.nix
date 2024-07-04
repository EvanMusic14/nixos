{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    nixosConfigurations.emusic = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ 
            ./configuration.nix 
            ./modules/my-configuration.nix
        ];
    };
  };
}
