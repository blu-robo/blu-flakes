{ self, inputs, ... }: {
  flake.nixosModules.personal = { pkgs, lib, ... }: {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    environment.sessionVariables = {
      SDL_VIDEODRIVER = "wayland";
      NIXOS_OZONE_WL = "1";
    };
    environment.systemPackages = with pkgs; [
      shotcut
      vesktop
      godot_4
      krita
      gimp
      nh
      wineWow64Packages.waylandFull
    ];
  };
}
