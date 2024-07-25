{ self, pkgs, lib, inputs, ...}: 
{
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  zramSwap.enable = true;
  systemd.oomd.enable = true;
  systemd.enableCgroupAccounting = true;
  console.useXkbConfig = true;
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
