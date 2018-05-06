# initial update
sudo apt-get -y update
# takes 1 hour or so
sudo apt-get -y upgrade
sudo rpi-update

# English folder name, easy to type directory
LANG=C xdg-user-dirs-update --force

# delete guest session
sudo sh -c 'echo "[SeatDefaults]" >> /usr/share/lightdm/lightdm.conf.d/50-no-guest.conf'
sudo sh -c 'echo "allow-guest=false" >> /usr/share/lightdm/lightdm.conf.d/50-no-guest.conf'

# add to dialout group to use serial port
sudo usermod -aG dialout $USER

# install ssh-server
sudo apt-get -y install openssh-server
sudo systemctl enable ssh

sudo apt-get clean
sudo rm -rf /var/cache/apt/archives/partial
sudo rm -rf /var/cache/apt/archives/lock

echo "GUIでログインして、software updateを実行する"

# and then reboot
sudo reboot
