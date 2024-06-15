{ ... }:
{
  programs.waybar.style = ''
    
    @define-color accent @sky;

    * {
        border: none;
        border-radius: 15px;
        padding: 0;
	margin: 0;
        min-height: 0px;
        font-family: CaskaydiaCove Nerd Font;
        font-size: 15px;
    }

    window#waybar {
        background-color: @base;
    }
    #workspaces {
        font-size: 15px;
	background-color: @crust;
	border-radius: 15px;
	margin-left: 2px;
	margin-right: 2px;
	padding-right: 5px;
    }
    #workspaces button {
        color: @accent;
	padding-left: 6px;
	padding-right: 6px;
    }
    #workspaces button.urgent {
        color: @red;
    }
    #workspaces button.active {
        color: @lavender;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery, #custom-launcher {
        font-size: 15px;
        color: @accent;
	background-color: @crust;
	border-radius: 15px;
	margin-left: 2px;
	margin-right: 2px;
    }

    #cpu {
        padding-left: 9px;
        padding-right: 9px;
    }
    #memory {
        padding-left: 9px;
        padding-right: 9px;
    }
    #disk {
        padding-left: 9px;
        padding-right: 9px;
    }

    #tray {
        padding: 0 20px;
        margin-left: 7px;
	background: none;
    }

    #pulseaudio {
        padding-left: 9px;
        padding-right: 9px;
    }

    #network {
        padding-left: 9px;
        padding-right: 9px;
	margin-right: 0px;
    }
    
    #clock {
        padding-left: 9px;
        padding-right: 9px;
    }

     #custom-launcher {
        font-size: 20px;
        color: @sky;
        font-weight: bold;
        padding-left: 6px;
        padding-right: 14px;
	margin-left: 0px;
    }
  '';
}
