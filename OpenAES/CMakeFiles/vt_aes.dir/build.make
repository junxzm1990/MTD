# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/llvm/git/MTD/OpenAES

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/llvm/git/MTD/OpenAES

# Include any dependencies generated for this target.
include CMakeFiles/vt_aes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vt_aes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vt_aes.dir/flags.make

CMakeFiles/vt_aes.dir/test/vt_aes.c.o: CMakeFiles/vt_aes.dir/flags.make
CMakeFiles/vt_aes.dir/test/vt_aes.c.o: test/vt_aes.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llvm/git/MTD/OpenAES/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/vt_aes.dir/test/vt_aes.c.o"
	/home/llvm/git/whole-program-llvm/wllvm  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vt_aes.dir/test/vt_aes.c.o   -c /home/llvm/git/MTD/OpenAES/test/vt_aes.c

CMakeFiles/vt_aes.dir/test/vt_aes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vt_aes.dir/test/vt_aes.c.i"
	/home/llvm/git/whole-program-llvm/wllvm  $(C_DEFINES) $(C_FLAGS) -E /home/llvm/git/MTD/OpenAES/test/vt_aes.c > CMakeFiles/vt_aes.dir/test/vt_aes.c.i

CMakeFiles/vt_aes.dir/test/vt_aes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vt_aes.dir/test/vt_aes.c.s"
	/home/llvm/git/whole-program-llvm/wllvm  $(C_DEFINES) $(C_FLAGS) -S /home/llvm/git/MTD/OpenAES/test/vt_aes.c -o CMakeFiles/vt_aes.dir/test/vt_aes.c.s

CMakeFiles/vt_aes.dir/test/vt_aes.c.o.requires:
.PHONY : CMakeFiles/vt_aes.dir/test/vt_aes.c.o.requires

CMakeFiles/vt_aes.dir/test/vt_aes.c.o.provides: CMakeFiles/vt_aes.dir/test/vt_aes.c.o.requires
	$(MAKE) -f CMakeFiles/vt_aes.dir/build.make CMakeFiles/vt_aes.dir/test/vt_aes.c.o.provides.build
.PHONY : CMakeFiles/vt_aes.dir/test/vt_aes.c.o.provides

CMakeFiles/vt_aes.dir/test/vt_aes.c.o.provides.build: CMakeFiles/vt_aes.dir/test/vt_aes.c.o
.PHONY : CMakeFiles/vt_aes.dir/test/vt_aes.c.o.provides.build

# Object files for target vt_aes
vt_aes_OBJECTS = \
"CMakeFiles/vt_aes.dir/test/vt_aes.c.o"

# External object files for target vt_aes
vt_aes_EXTERNAL_OBJECTS =

vt_aes: CMakeFiles/vt_aes.dir/test/vt_aes.c.o
vt_aes: liboaes_lib.a
vt_aes: CMakeFiles/vt_aes.dir/build.make
vt_aes: CMakeFiles/vt_aes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable vt_aes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vt_aes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vt_aes.dir/build: vt_aes
.PHONY : CMakeFiles/vt_aes.dir/build

CMakeFiles/vt_aes.dir/requires: CMakeFiles/vt_aes.dir/test/vt_aes.c.o.requires
.PHONY : CMakeFiles/vt_aes.dir/requires

CMakeFiles/vt_aes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vt_aes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vt_aes.dir/clean

CMakeFiles/vt_aes.dir/depend:
	cd /home/llvm/git/MTD/OpenAES && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llvm/git/MTD/OpenAES /home/llvm/git/MTD/OpenAES /home/llvm/git/MTD/OpenAES /home/llvm/git/MTD/OpenAES /home/llvm/git/MTD/OpenAES/CMakeFiles/vt_aes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vt_aes.dir/depend

