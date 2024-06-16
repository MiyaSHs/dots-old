{ pkgs, ... }: 
{
  imports = [
    ./hardware-configuration.nix
    ./../modules/core
  ];
  
  services.system76-scheduler.enable = true;
  programs.corectrl.gpuOverclock.enable = true;
  powerManagement.cpuFreqGovernor = "performance";
  hardware.cpu.amd.updateMicrocode = true;
}
