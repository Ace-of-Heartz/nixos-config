{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ace = {
    isNormalUser = true;
    description = "Ace";
    extraGroups = [ "networkmanager" "wheel" "vboxusers" "scanner" "lp"];
    shell = pkgs.fish;
    packages = with pkgs; [
      nix-direnv

      ];

  };
}
