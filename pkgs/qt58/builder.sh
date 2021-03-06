source $stdenv/setup

time tar -xf $src

cd qt-everywhere-opensource-src-$version
# TODO: patch qt to not use /bin/pwd, test building it in a sandbox
cd ..

mkdir build
cd build

../qt-everywhere-opensource-src-$version/configure \
  -opensource \
  -confirm-license \
  -xplatform win32-g++ \
  -device-option CROSS_COMPILE=${host}- \
  -nomake examples \
  -release

# TODO: get it to use our zlib instead of compiling its own copy
# TODO: get it to find angle above

# TODO: make

cd ..
