{ config, pkgs, ... }:

{
  # Containers/Podman/Docker
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  # Change bluetooth mode to work with airpods
  hardware.bluetooth.settings = {
    General = {
      ControllerMode = "bredr";
    };
  };

  environment.systemPackages = with pkgs; [
    podman-compose
  ];
}
