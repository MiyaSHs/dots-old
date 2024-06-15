{ pkgs, username, ... }: 
{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "colemak";
    };
    displayManager = {
      setupCommands =
      "
      xrandr --output DP-3 --rate 240
      ";
      startx.enable = true;
    };
  };
}
