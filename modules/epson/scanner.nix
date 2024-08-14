{config, pkgs, ...}:

{
  hardware.sane.enable = true;
  hardware.sane.extraBackends = [ pkgs.epkowa pkgs.utsushi];
  services.udev.packages = [pkgs.utsushi];
}