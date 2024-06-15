{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.font-awesome
    pkgs.kdePackages.qt6gtk2
  ];

  home.pointerCursor = {
    gtk.enable = true;
    name = "catppuccin-mocha-sky-cursors";
    package = pkgs.catppuccin-cursors.mochaSky;
    size = 24;
  };

  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
    };

    #iconTheme = {
    #  name = "Papirus-Dark";
    #  package = pkgs.catppuccin-papirus-folders.override {
    #    flavor = "mocha";
    #    accent = "sky";
    #  };
    #};
    
    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 11;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      name = "kvantum";
      catppuccin = {
        enable = true;
	apply = true;
      };
    };
  };
}
