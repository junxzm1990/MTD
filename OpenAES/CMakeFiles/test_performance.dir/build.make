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
include CMakeFiles/test_performance.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_performance.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_performance.dir/flags.make

CMakeFiles/test_performance.dir/test/test_performance.c.o: CMakeFiles/test_performance.dir/flags.make
CMakeFiles/test_performance.dir/test/test_performance.c.o: test/test_performance.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/klee/OpenAES-0.9.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/test_performance.dir/test/test_performance.c.o"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/test_performance.dir/test/test_performance.c.o   -c /home/klee/OpenAES-0.9.0/test/test_performance.c

CMakeFiles/test_performance.dir/test/test_performance.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_performance.dir/test/test_performance.c.i"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -E /home/klee/OpenAES-0.9.0/test/test_performance.c > CMakeFiles/test_performance.dir/test/test_performance.c.i

CMakeFiles/test_performance.dir/test/test_performance.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_performance.dir/test/test_performance.c.s"
	/home/klee/whole-program-llvm-master/wllvm  $(C_DEFINES) $(C_FLAGS) -S /home/klee/OpenAES-0.9.0/test/test_performance.c -o CMakeFiles/test_performance.dir/test/test_performance.c.s

CMakeFiles/test_performance.dir/test/test_performance.c.o.requires:
.PHONY : CMakeFiles/test_performance.dir/test/test_performance.c.o.requires

CMakeFiles/test_performance.dir/test/test_performance.c.o.provides: CMakeFiles/test_performance.dir/test/test_performance.c.o.requires
	$(MAKE) -f CMakeFiles/test_performance.dir/build.make CMakeFiles/test_performance.dir/test/test_performance.c.o.provides.build
.PHONY : CMakeFiles/test_performance.dir/test/test_performance.c.o.provides

CMakeFiles/test_performance.dir/test/test_performance.c.o.provides.build: CMakeFiles/test_performance.dir/test/test_performance.c.o
.PHONY : CMakeFiles/test_performance.dir/test/test_performance.c.o.provides.build

# Object files for target test_performance
test_performance_OBJECTS = \
"CMakeFiles/test_performance.dir/test/test_performance.c.o"

# External object files for target test_performance
test_performance_EXTERNAL_OBJECTS =

test_performance: CMakeFiles/test_performance.dir/test/test_performance.c.o
test_performance: liboaes_lib.a
test_performance: CMakeFiles/test_performance.dir/build.make
test_performance: CMakeFiles/test_performance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable test_performance"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_performance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_performance.dir/build: test_performance
.PHONY : CMakeFiles/test_performance.dir/build

CMakeFiles/test_performance.dir/requires: CMakeFiles/test_performance.dir/test/test_performance.c.o.requires
.PHONY : CMakeFiles/test_performance.dir/requires

CMakeFiles/test_performance.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_performance.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_performance.dir/clean

CMakeFiles/test_performance.dir/depend:
	cd /home/klee/OpenAES-0.9.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0/CMakeFiles/test_performance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_performance.dir/depend

