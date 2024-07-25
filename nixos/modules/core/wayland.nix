{ inputs, pkgs, ... }:
{
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
