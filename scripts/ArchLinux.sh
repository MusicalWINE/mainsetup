#!/bin/bash
#Install the basic WINE functions and the necessary software to make WINE fully work along with better software to configure WINE.

echo "This will require a SUDO password at least one time, but it may require a SUDO password some other times too. This part will install WINE and the necessary software."
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo pacman -Syyu
sudo pacman -S wine winetricks zenity curl p7zip
echo "Done installing necessary software!"

echo "Getting the Winetricks script file to install all availble fonts!" 
mkdir ~/tempdir
curl https://gitlab.com/winemusiccreation/winetricks/-/blob/master/src/winetricks -o ~/tempdir/winetricks
chmod +x ~/tempdir/winetricks && bash ~/tempdir/winetricks allfonts
echo "Done installing fonts!"

echo "Done with the setup! Now to install your prefered DAW, please go back to the GitLab organization and select the correct repository!"
