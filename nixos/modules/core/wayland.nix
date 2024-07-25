{ inputs, pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
  };
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "colemak_dh";
    };
    displayManager = {
      setupCommands =
      "
      xrandr --output HDMI-A-1 --rate 240
      ";
      sddm.enable = true;
    };
}
