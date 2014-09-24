# g++
if [ "$CXX" == "g++" ]; then sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test; fi

# libc++
if [ "$CXX" == "clang++" ]; then sudo add-apt-repository -y ppa:h-rayflood/llvm; fi

apt-get update -qq

# g++4.8.1
if [ "$CXX" == "g++" ]; then sudo apt-get install -qq g++-4.8; fi
if [ "$CXX" == "g++" ]; then sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50; fi

# libc++
if [ "$CXX" == "clang++" ]; then cwd=$(pwd); fi #PUSH
if [ "$CXX" == "clang++" ]; then export CXXFLAGS="-std=c++0x -stdlib=libc++"; fi
if [ "$CXX" == "clang++" ]; then svn co --quiet http://llvm.org/svn/llvm-project/libcxx/trunk libcxx; fi
if [ "$CXX" == "clang++" ]; then cd libcxx/lib && bash buildit; fi
if [ "$CXX" == "clang++" ]; then sudo cp ./libc++.so.1.0 /usr/lib/; fi
if [ "$CXX" == "clang++" ]; then sudo mkdir /usr/include/c++/v1; fi
if [ "$CXX" == "clang++" ]; then cd .. && sudo cp -r include/* /usr/include/c++/v1/; fi
if [ "$CXX" == "clang++" ]; then cd /usr/lib && sudo ln -sf libc++.so.1.0 libc++.so; fi
if [ "$CXX" == "clang++" ]; then sudo ln -sf libc++.so.1.0 libc++.so.1 && cd $cwd; fi #POP
  
# install biicode:
wget https://s3.amazonaws.com/biibinaries/release/1.3.3/bii-ubuntu32_1_3_3.deb 
(! sudo dpkg -i bii-ubuntu32_1_3_3.deb ) && sudo apt-get -f install
rm bii-ubuntu32_1_3_3.deb
# Update cmake: 
wget http://www.cmake.org/files/v3.0/cmake-3.0.1-Linux-i386.tar.gz
tar -xzf cmake-3.0.1-Linux-i386.tar.gz
sudo cp -fR cmake-3.0.1-Linux-i386/* /usr
rm -rf cmake-3.0.1-Linux-i386
rm cmake-3.0.1-Linux-i386.tar.gz
