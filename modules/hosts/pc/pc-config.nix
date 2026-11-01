{ ... }: {
  flake.nixosModules.pc-config = { pkgs, ... }: {
    networking = {
      hostName = "blu-pc";
    };
  };
}
