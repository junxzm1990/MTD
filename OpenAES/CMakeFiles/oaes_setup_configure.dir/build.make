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

# Utility rule file for oaes_setup_configure.

CMakeFiles/oaes_setup_configure:
	/usr/bin/cmake -E copy_if_different /home/klee/OpenAES-0.9.0/src/oaes_setup.vdproj /home/klee/OpenAES-0.9.0 & /usr/bin/cmake -E copy_if_different /home/klee/OpenAES-0.9.0/CHANGELOG /home/klee/OpenAES-0.9.0 & /usr/bin/cmake -E copy_if_different /home/klee/OpenAES-0.9.0/LICENSE /home/klee/OpenAES-0.9.0 & /usr/bin/cmake -E copy_if_different /home/klee/OpenAES-0.9.0/README /home/klee/OpenAES-0.9.0 & /usr/bin/cmake -E copy_if_different /home/klee/OpenAES-0.9.0/VERSION /home/klee/OpenAES-0.9.0

oaes_setup_configure: CMakeFiles/oaes_setup_configure
oaes_setup_configure: CMakeFiles/oaes_setup_configure.dir/build.make
.PHONY : oaes_setup_configure

# Rule to build all files generated by this target.
CMakeFiles/oaes_setup_configure.dir/build: oaes_setup_configure
.PHONY : CMakeFiles/oaes_setup_configure.dir/build

CMakeFiles/oaes_setup_configure.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/oaes_setup_configure.dir/cmake_clean.cmake
.PHONY : CMakeFiles/oaes_setup_configure.dir/clean

CMakeFiles/oaes_setup_configure.dir/depend:
	cd /home/klee/OpenAES-0.9.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0 /home/klee/OpenAES-0.9.0/CMakeFiles/oaes_setup_configure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/oaes_setup_configure.dir/depend

