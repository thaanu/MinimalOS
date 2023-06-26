echo "Setup the environment" 

export PREFIX="$HOME/cross-tools"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"


echo "Create directory $PREFIX"
echo "Create directory $PREFIX/source"
echo "Create directory $PREFIX/downloads"
mkdir $PREFIX $PREFIX/source $PREFIX/downloads && 


tar zxvf binutils-2.25.1.tar.gz --directory $PREFIX/source && 
tar zxvf gcc-5.3.0.tar.gz --directory $PREFIX/source &&

cd $PREFIX/source/binutils-2.25.1 && 
./configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror && 
make && make install && 


echo "-----------"
echo "----GCC----"
echo "-----------"

cd $PREFIX/source/gcc-5.3.0 && 
./contrib/download_prerequisites &&

mkdir $PREFIX/source/gcc-5.3.0/gcc_build &&
cd $PREFIX/source/gcc-5.3.0/gcc_build && 
../configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers


make all-gcc && 
make all-target-libgcc && 
make install-gcc && 
make install-target-libgcc



