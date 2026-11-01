{ ... }: {
  flake.nixosModules.fw13-config = { pkgs, ... }: {
    networking = {
      hostName = "blu-fw13";
    };
    services.fprintd = {
      enable = true;
    };
  };
}
