{ pkgs, ... }:
{  
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    enableRedistributableFirmware = true;
  };
  services.system76-scheduler.enable = true;
  hardware.cpu.amd.updateMicrocode = true;
}
