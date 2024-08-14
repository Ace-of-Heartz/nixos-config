{inputs, username, host, ...}: {
  imports =
  [(import ./gc.nix)] 
  ++ [(import ./amd.nix)]
  ++ [(import ./vulkan.nix)]
  ++ [(import ./opencl.nix)]
  ++ [(import ./fish.nix)]
  ++ [(import ./epson/default.nix)]
  ++ [(import ./blender/blender.nix)]
  ++ [(import ./steam.nix)]
  ++ [(import ./emacs.nix)]
  ;

}