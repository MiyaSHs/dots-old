
put everything in the nixos folder into your /etc/nixos folder

remove your previous configurations (configuration.nix, and whatever else you added), **EXCEPT** hardware-configuration.nix, put hardware-configuration.nix into the main/ folder

then run **sudo nixos-rebuild switch --flake ".#(your username here!!!!)"** **IN THE /etc/nixos/ FOLDER OTHERWISE IT WILL FAIL**

reboot, and after logging in type "Hyprland" to open the desktop, i dont use a login manager for now

also change the user "awoeeq" everywhere where it is mentioned with your username in the flake.nix file

use the "waypaper" app to set your wallpaper, hyprland will recall what you selected there every reboot

to have the same fetch icon as me, put "fastfetch.png" into your ~/Pictures folder, thats where fastfetch looks for it 

the wallhaven- images are my wallpapers, you dont need to put them in any special folder since, as explained above, you should set wallpapers through waypaper, not in any declaritive way inside the nixos config, but if you wanna know i usually put em in ~/Pictures/wallpapers to not clutter my Pictures folder too much

the default swaylock bind "Super + L" looks for main.png in the ~/Pictures/lockscreen/ folder, put the nix.png file there, if you want that image to be the lockscreen of course

use the "selectdefaultapplication" app to set your default apps

Preview :
![2024-06-15-At-07h21m49s](https://github.com/MiyaSHs/dots/assets/124814309/4f09aac8-77a1-4005-9ab4-d579488fff89)
