{ config, pkgs, lib, inputs, ...}: 
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    font.name = "CaskaydiaCove Nerd Font";
    settings = {
      confirm_os_window_close = 1;
      background_opacity = "0.5";  
      enable_audio_bell = false;
    };
  };
  programs.fish = {
    enable = true;
    shellInit = "fastfetch";
    interactiveShellInit = ''
      set -U fish_greeting # Disable greeting
    '';
  };
  programs.starship = {
    enable = true;
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
  programs.btop = {
    enable = true;
  };
  home.packages = (with pkgs; [ nvtopPackages.amd ]);
}
