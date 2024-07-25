{ pkgs, ... }:
{  
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    enableRedistributableFirmware = true;
    amdgpu.initrd.enable = true;
  };
  services.system76-scheduler.enable = true;
  hardware.cpu.amd.updateMicrocode = true;
  services.ratbagd.enable = true;
}
