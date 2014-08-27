make clean
export PATH=/home/llvm/git/whole-program-llvm/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export LLVM_COMPILER=clang
CC=wllvm CFLAGS="-g" ./configure
make 
rm src/wget.bc
extract-bc src/wget
rm /var/www/wget.bc
cp src/wget.bc /var/www
