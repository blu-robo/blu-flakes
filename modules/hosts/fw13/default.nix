{ self, inputs, ... }: {
  flake.nixosConfigurations.blu-fw13 = inputs.nixpkgs.lib.nixosSystem {
    modules = (with self.nixosModules; [
      desktop
      fw13-config
      dev
      terminal
      school
      zen
      personal
      fw13-hardware
    ]) ++ [
      inputs.nixos-hardware.nixosModules.framework-amd-ai-300-series
    ];
  };
}
