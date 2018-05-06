# add repository
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get -y update

# install curl
sudo apt-get -y install curl

# git and git gui tools
sudo apt-get -y install git
# git lfs, not working
#curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
#sudo apt-get -y install git-lfs

# rabbitvcs, gui git client
sudo apt-get -y install python-gtk2 python-configobj python-gobject python-simplejson python-gtkspellcheck python-svn subversion python-dulwich tk-dev python-glade2 python-dbus
sudo apt-get -y install python-caja
# diff tool
sudo apt-get -y install meld
git clone https://github.com/rabbitvcs/rabbitvcs.git
cd rabbitvcs
sudo python setup.py install --install-layout=deb
sudo cp clients/caja/RabbitVCS.py /usr/share/caja-python/extensions
cd ../
