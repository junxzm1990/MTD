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
CMAKE_SOURCE_DIR = /home/klee/OpenAES-0.9.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/klee/OpenAES-0.9.0

# Include any dependencies generated for this target.
include CMakeFiles/test_keys.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_keys.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_keys.dir/flags.make

CMakeFiles/test_keys.dir/test/test_keys.c.o: CMakeFiles/test_keys.dir/flags.make
CMakeFiles/test_keys.dir/test/test_keys.c.o: test/test_keys.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/klee/OpenAES-0.9.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/test_keys.dir/test/test_keys.c.o"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/test_keys.dir/test/test_keys.c.o   -c /home/klee/OpenAES-0.9.0/test/test_keys.c

CMakeFiles/test_keys.dir/test/test_keys.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_keys.dir/test/test_keys.c.i"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -E /home/klee/OpenAES-0.9.0/test/test_keys.c > CMakeFiles/test_keys.dir/test/test_keys.c.i

CMakeFiles/test_keys.dir/test/test_keys.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_keys.dir/test/test_keys.c.s"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -S /home/klee/OpenAES-0.9.0/test/test_keys.c -o CMakeFiles/test_keys.dir/test/test_keys.c.s

CMakeFiles/test_keys.dir/test/test_keys.c.o.requires:
.PHONY : CMakeFiles/test_keys.dir/test/test_keys.c.o.requires

CMakeFiles/test_keys.dir/test/test_keys.c.o.provides: CMakeFiles/test_keys.dir/test/test_keys.c.o.requires
	$(MAKE) -f CMakeFiles/test_keys.dir/build.make CMakeFiles/test_keys.dir/test/test_keys.c.o.provides.build
.PHONY : CMakeFiles/test_keys.dir/test/test_keys.c.o.provides

CMakeFiles/test_keys.dir/test/test_keys.c.o.provides.build: CMakeFiles/test_keys.dir/test/test_keys.c.o
.PHONY : CMakeFiles/test_keys.dir/test/test_keys.c.o.provides.build

# Object files for target test_keys
test_keys_OBJECTS = \
"CMakeFiles/test_keys.dir/test/test_keys.c.o"

# External object files for target test_keys
test_keys_EXTERNAL_OBJECTS =

test_keys: CMakeFiles/test_keys.dir/test/test_keys.c.o
test_keys: liboaes_lib.a
test_keys: CMakeFiles/test_keys.dir/build.make
test_keys: CMakeFiles/test_keys.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable test_keys"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_keys.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_keys.dir/build: test_keys
.PHONY : CMakeFiles/test_keys.dir/build

CMakeFiles/test_keys.dir/requires: CMakeFiles/test_keys.dir/test/test_keys.c.o.requires
.PHONY : CMakeFiles/test_keys.dir/requires

CMakeFiles/test_keys.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_keys.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_keys.dir/clean

CMakeFiles/test_keys.dir/depend:
	cd /home/klee/OpenAES-0.9.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0/CMakeFiles/test_keys.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_keys.dir/depend

