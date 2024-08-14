{config, pkgs, ...}:

{

  services.emacs = {
    enable = true;
    package = pkgs.emacs-unstable;
  };

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
    }))
  ];

  # services.emacs.systemPackages = with pkgs;
  # [ 
  #   ((emacsPackagesFor emacsPgtkNativeComp).emacsWithPackages (
  #     epkgs: [epkgs.vterm]
  #   ))
  
  # ];

  # environment.systemPackages = [
  #   (pkgs.emacsWithPackagesFromUsePackage {
  #     package = pkgs.emacsGit;  # replace with pkgs.emacsPgtk, or another version if desired.
  #     config = path/to/your/config.el;
  #     # config = path/to/your/config.org; # Org-Babel configs also supported

  #     # Optionally provide extra packages not in the configuration file.
  #     extraEmacsPackages = epkgs: [
  #       epkgs.use-package
  #     ];

  #     # Optionally override derivations.
  #     override = epkgs: epkgs // {
  #       somePackage = epkgs.melpaPackages.somePackage.overrideAttrs(old: {
  #          # Apply fixes here
  #       });
  #     };
  #   })
  # ];
}