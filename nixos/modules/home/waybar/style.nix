{ ... }:
{
  programs.waybar.style = ''
    
    @define-color accent @sky;

    * {
        border: none;
	border-radius: 0px;
        padding: 0;
	margin: 0;
        min-height: 0px;
        font-family: CaskaydiaCove Nerd Font;
        font-size: 15px;
    }

    window#waybar {
        background-color: @base;
	border-radius: 15px;
    }
    #workspaces {
        font-size: 15px;
	background-color: @crust;
	border-radius: 0px 15px 15px 0px;
	padding-right: 5px;
    }
    #workspaces button {
        color: @accent;
	padding-left: 9px;
	padding-right: 9px;
    }
    #workspaces button.urgent {
        color: @red;
    }
    #workspaces button.active {
        color: @lavender;
    }
    #workspaces botton.hover {
        background: none;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery, #custom-launcher, #cava {
        font-size: 15px;
        color: @accent;
	background-color: @crust;
	padding-left: 9px;
	padding-right: 9px;
    }

    #cava {
        background: none;
    }

    #cpu {
	border-radius: 15px 0px 0px 15px;
    }

    #memory {
    }

    #disk {
    }

    #tray {
	background: none;
    }

    #pulseaudio {
    }

    #network {
    }
    
    #clock {
	border-radius: 0px 15px 15px 0px;
    }

     #custom-launcher {
        font-size: 20px;
        color: @sky;
        font-weight: bold;
	border-radius: 15px 0px 0px 15px;
    }
  '';
}
