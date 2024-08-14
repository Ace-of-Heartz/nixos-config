{config, pkgs,...}:

{
  hardware.opengl.extraPackages = with pkgs; [
  rocmPackages.clr.icd
  rocm-opencl-icd
  rocm-opencl-runtime
  ];
}