# Python tools
sudo apt-get -y install python-dev
sudo apt-get -y install python-serial
sudo apt-get -y install python-testresources
# pip latest
sudo apt-get -y purge python-pip
wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py
# GUIからsoftware updateしたあとでリブートしてないとSSL ERRORになる
sudo python get-pip.py
