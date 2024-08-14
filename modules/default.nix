{inputs, username, host, ...}: {
  imports = 
  [(import ./emacs.nix)]
  ++ [(import ./epson/default.nix)]
  ++ [(import ./steam.nix)]
  ++ [(import ./blender/blender.nix)]
    ++ [(import ./fish.nix)];

}