# g++
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update -qq

# g++4.8.1
sudo apt-get install -qq g++-4.8
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50

# install biicode:
# if platform is x64 or x86
wget http://apt.biicode.com/install.sh && chmod +x install.sh && ./install.sh

# Update cmake: 
wget http://www.cmake.org/files/v3.0/cmake-3.0.2-Linux-i386.tar.gz
tar -xzf cmake-3.0.2-Linux-i386.tar.gz
sudo cp -fR cmake-3.0.2-Linux-i386/* /usr
rm -rf cmake-3.0.2-Linux-i386
rm cmake-3.0.2-Linux-i386.tar.gz
