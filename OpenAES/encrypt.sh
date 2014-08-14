#/bin/bash
make clean
export PATH=/home/llvm/git/whole-program-llvm/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export LLVM_COMPILER=clang
CC=wllvm cmake .
make 
extract-bc test_encrypt
rm /var/www/test_encrypt.bc
cp test_encrypt.bc /var/www

