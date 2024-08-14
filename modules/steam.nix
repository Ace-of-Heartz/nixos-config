{ pkgs, lib, ... }: 
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    dedicatedServer.openFirewall = true;
  };

  programs.gamemode = {
    enable = true;
  };

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-runtime"
  ];
  # proton-ge-bin

#   warning: The package proton-ge in nix-gaming has been deprecated as of 2024-03-17.

# You should use proton-ge-bin from Nixpkgs, which conforms to
# the new `extraCompatTools` module option under `programs.steam`
# For details, see the relevant pull request:
}