sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116

sudo apt-get -y update
sudo apt-get -y install ros-kinetic-desktop
sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get -y install python-rosinstall python-rosinstall-generator python-wstool build-essential

#make catkin_workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_init_workspace src
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
catkin_make
source ~/.bashrc
cd -

#tool
sudo apt-get -y install ros-kinetic-rqt*
sudo apt-get -y install ros-kinetic-usb-cam
sudo apt-get -y install ros-kinetic-rosserial ros-kinetic-rosserial-arduino
sudo apt-get -y install ros-kinetic-joy

#joystic setting tool
sudo apt-get -y install jstest-gtk