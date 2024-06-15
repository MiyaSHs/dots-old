make sure to remove the previous files before placing other ones there;

put everything in the nixos folder into the /etc/nixos folder;

then run **sudo nixos-rebuild switch --flake ".#(your username here!!!!)"**;

also change the user "awoeeq" everywhere where it is mentioned with your username in the flake.nix file

use the "waypaper" app to set your wallpaper, hyprland will recall what you selected there every reboot

to have the same fetch icon as me, put "fastfetch.png" into your ~/Pictures folder, thats where fastfetch looks for it 

the wallhaven- files are my wallpapers, you dont need to put them in any special folder since, as explained above, you should set wallpapers throught waypaper, not in any declaritive way inside the nixos config, but if you wanna know i usually put em in ~/Pictures/wallpapers to not clutter my Pictures folder too much

the default swaylock bind "Super + L" looks for nix.png in the ~/Pictures/ folder, put the nix.png file there, if you want that image to be the lockscreen of course
