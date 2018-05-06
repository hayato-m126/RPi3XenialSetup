# use new user to login through ssh client
#overscan
sudo sed -i -e s/"#disable_overscan=1"/"disable_overscan=1"/ /boot/config.txt

#hotplug
sudo sed -i -e s/"#hdmi_force_hotplug=1"/"hdmi_force_hotplug=1"/ /boot/config.txt

# xdcmp setting
sudo sh -c 'echo "[XDMCPServer]" > /etc/lightdm/lightdm.conf'
sudo sh -c 'echo "enabled=true" >> /etc/lightdm/lightdm.conf'

# firewall for security
sudo apt-get -y install gufw

#setting editor
sudo apt-get -y install dconf-editor

#hardware infomation and benchmark
sudo apt-get -y install hardinfo

#swap
sudo apt-get -y install dphys-swapfile

# NetBIOS名前解決
sudo apt-get -y install winbind
sudo apt-get -y install libnss-winbind
sudo sed -i -e s/" dns"/" dns wins"/ /etc/nsswitch.conf

#NTP PC clock
sudo apt-get -y install chrony
sudo apt-get -y install ntpdate
sudo ntpdate -q ntp.nict.jp

# and then reboot
sudo reboot

