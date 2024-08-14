{config, pkgs,...}:

{
  systemd.packages = with pkgs; [ lact ];
  systemd.services.lactd = {
    description = "AMDGPU Control Daemon";
    enable = true; # this is true by default
    wantedBy = [ "multi-user.target" ]; # add this if you want the unit to auto start at boot time
    #serviceConfig = {
    #  ExecStart = "${pkgs.lact}/bin/lact daemon";
    #};
  };
}