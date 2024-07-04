{ config, pkgs, ... }:

{
  # z shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Containers/Podman/Docker
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  environment.systemPackages = with pkgs; [
    podman-compose
  ];
}