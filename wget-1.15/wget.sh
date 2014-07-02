export LLVM_COMPILER=clang
export PATH=~/whole-program-llvm-master:$PATH
make clean
rm src/wget.bc
CC=wllvm ./configure
make
extract-bc src/wget

