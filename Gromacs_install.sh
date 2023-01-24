set -e

#Gromacs Installation Script.


echo "-------------------------------"


sudo apt update -y

sudo apt install cmake -y

sudo apt install build-essential -y

wget -O gromacs-2022.4.tar.gz https://ftp.gromacs.org/gromacs/gromacs-2022.4.tar.gz

tar xfz gromacs-2022.4.tar.gz

 #wget -O regressiontests-2022.4.tar.gz https://ftp.gromacs.org/regressiontests/regressiontests-2022.4.tar.gz

 #tar xfz regressiontests-2022.4.tar.gz

cd gromacs-2022.4

mkdir build

cd build

cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON

make

make check

sudo make install

source /usr/local/gromacs/bin/GMXRC

gmx


