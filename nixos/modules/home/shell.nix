{ config, pkgs, ...}: 
{
  programs.fish = {
    enable = true;
    shellInit = "fastfetch";
    interactiveShellInit = ''
      set -U fish_greeting # Disable greeting
    '';
  };
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "kitty-direct";
    	source = "~/Pictures/fastfetch.png";
	height = 4;
      };
      display = {
        separator = " ›  ";
      };
      modules = [
        "break"
	"title"
        {
            type= "os";
            key= "os    ";
            keyColor= "33"; 
        }
        {
            type= "kernel";
            key= "kernel";
            keyColor= "33";
        }
        {
            type= "host";
            format= "{5} {1}";
            key= "host  ";
            keyColor= "33";
        }
        {
            type= "packages";
            format= "{all} (nix)";
            key= "pkgs  ";
            keyColor= "33";  
        }
        {
            type= "uptime";
            format= "{2}h {3}m";
            key= "uptime";
            keyColor= "33";
        }
        "break"
      ];
    };
  };
  programs.kitty.shellIntegration.enableFishIntegration = true;
}
