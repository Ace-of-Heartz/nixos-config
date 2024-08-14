{ pkgs, config, ...}:

{
    services.printing.drivers = [ pkgs.gutenprint ];
}