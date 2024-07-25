{ ... }: 
{
  services = {
    gnome-keyring.enable = true;
    gnome-keyring.components = [ "secrets" ];
  };
}
