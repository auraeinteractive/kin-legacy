# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/hogne/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/hogne/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hogne/Projects/friendup/libs-ext/libssh2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hogne/Projects/friendup/libs-ext/libssh2/build

# Include any dependencies generated for this target.
include example/CMakeFiles/example-direct_tcpip.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/CMakeFiles/example-direct_tcpip.dir/compiler_depend.make

# Include the progress variables for this target.
include example/CMakeFiles/example-direct_tcpip.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/example-direct_tcpip.dir/flags.make

example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o: example/CMakeFiles/example-direct_tcpip.dir/flags.make
example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o: /home/hogne/Projects/friendup/libs-ext/libssh2/example/direct_tcpip.c
example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o: example/CMakeFiles/example-direct_tcpip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hogne/Projects/friendup/libs-ext/libssh2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o"
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build/example && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o -MF CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o.d -o CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o -c /home/hogne/Projects/friendup/libs-ext/libssh2/example/direct_tcpip.c

example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.i"
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build/example && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hogne/Projects/friendup/libs-ext/libssh2/example/direct_tcpip.c > CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.i

example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.s"
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build/example && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hogne/Projects/friendup/libs-ext/libssh2/example/direct_tcpip.c -o CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.s

# Object files for target example-direct_tcpip
example__direct_tcpip_OBJECTS = \
"CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o"

# External object files for target example-direct_tcpip
example__direct_tcpip_EXTERNAL_OBJECTS =

example/example-direct_tcpip: example/CMakeFiles/example-direct_tcpip.dir/direct_tcpip.c.o
example/example-direct_tcpip: example/CMakeFiles/example-direct_tcpip.dir/build.make
example/example-direct_tcpip: src/libssh2.a
example/example-direct_tcpip: /usr/lib/x86_64-linux-gnu/libgcrypt.so
example/example-direct_tcpip: example/CMakeFiles/example-direct_tcpip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hogne/Projects/friendup/libs-ext/libssh2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable example-direct_tcpip"
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-direct_tcpip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/example-direct_tcpip.dir/build: example/example-direct_tcpip
.PHONY : example/CMakeFiles/example-direct_tcpip.dir/build

example/CMakeFiles/example-direct_tcpip.dir/clean:
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build/example && $(CMAKE_COMMAND) -P CMakeFiles/example-direct_tcpip.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/example-direct_tcpip.dir/clean

example/CMakeFiles/example-direct_tcpip.dir/depend:
	cd /home/hogne/Projects/friendup/libs-ext/libssh2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hogne/Projects/friendup/libs-ext/libssh2 /home/hogne/Projects/friendup/libs-ext/libssh2/example /home/hogne/Projects/friendup/libs-ext/libssh2/build /home/hogne/Projects/friendup/libs-ext/libssh2/build/example /home/hogne/Projects/friendup/libs-ext/libssh2/build/example/CMakeFiles/example-direct_tcpip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/example-direct_tcpip.dir/depend

