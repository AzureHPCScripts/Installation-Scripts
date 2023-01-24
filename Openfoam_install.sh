# OpenFoam installation script
#___________________________________

set -e

echo "1.Installation"
sudo sh -c "wget -O - https://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu

sudo apt-get -y update

sudo apt-get -y install openfoam8



echo "2.patching"
sudo apt-get -y update
sudo apt-get -y upgrade



echo "3.User Configuration"


sed -i ' $a source /opt/openfoam8/etc/bashrc ' .bashrc



echo "Successfull.........."



