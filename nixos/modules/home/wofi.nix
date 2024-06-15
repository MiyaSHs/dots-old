{ ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 400;
      height = 350;
      location = "center";
      show = "drun";
      prompt = "Search...";
      allow_markup = true;
      no_actions = true;
      halign = "fill";
      orientation = "vertical";
      content_halign = "fill";
      insensitive = true;
      allow_images = true;
      image_size = 40;
      gtk_dark = true;
    };
    style =
      ''
      * {
        font-family: CaskaydiaCove Nerd Font
      }

      window {
        border: 2px solid #89dceb;
	border-radius: 15px;
      }
      
      #input {
        margin: 7px;
	margin-bottom: 2px;
      }

      #scroll {
        margin: 7px;
	margin-top: 2px;
      }
      '';
  };
}
