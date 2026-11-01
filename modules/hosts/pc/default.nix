{ self, inputs, ... }: {
  flake.nixosConfigurations.blu-pc = inputs.nixpkgs.lib.nixosSystem {
    modules = (with self.nixosModules; [
      pc-config
      pc-hardware
      desktop
      dev
      terminal
      school
      zen
      personal
    ]);
  };
}
