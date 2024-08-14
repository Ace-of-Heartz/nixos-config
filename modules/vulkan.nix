{config, pkgs, ...}: 

{
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true; # This is already enabled by default
  hardware.opengl.driSupport32Bit = true; # For 32 bit applications  
}