# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Queue_og.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Queue_og.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Queue_og.dir/flags.make

CMakeFiles/Queue_og.dir/queue.c.o: CMakeFiles/Queue_og.dir/flags.make
CMakeFiles/Queue_og.dir/queue.c.o: ../queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Queue_og.dir/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Queue_og.dir/queue.c.o   -c /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c

CMakeFiles/Queue_og.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Queue_og.dir/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c > CMakeFiles/Queue_og.dir/queue.c.i

CMakeFiles/Queue_og.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Queue_og.dir/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c -o CMakeFiles/Queue_og.dir/queue.c.s

CMakeFiles/Queue_og.dir/queue.c.o.requires:

.PHONY : CMakeFiles/Queue_og.dir/queue.c.o.requires

CMakeFiles/Queue_og.dir/queue.c.o.provides: CMakeFiles/Queue_og.dir/queue.c.o.requires
	$(MAKE) -f CMakeFiles/Queue_og.dir/build.make CMakeFiles/Queue_og.dir/queue.c.o.provides.build
.PHONY : CMakeFiles/Queue_og.dir/queue.c.o.provides

CMakeFiles/Queue_og.dir/queue.c.o.provides.build: CMakeFiles/Queue_og.dir/queue.c.o


CMakeFiles/Queue_og.dir/queue_tests.c.o: CMakeFiles/Queue_og.dir/flags.make
CMakeFiles/Queue_og.dir/queue_tests.c.o: ../queue_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Queue_og.dir/queue_tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Queue_og.dir/queue_tests.c.o   -c /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c

CMakeFiles/Queue_og.dir/queue_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Queue_og.dir/queue_tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c > CMakeFiles/Queue_og.dir/queue_tests.c.i

CMakeFiles/Queue_og.dir/queue_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Queue_og.dir/queue_tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c -o CMakeFiles/Queue_og.dir/queue_tests.c.s

CMakeFiles/Queue_og.dir/queue_tests.c.o.requires:

.PHONY : CMakeFiles/Queue_og.dir/queue_tests.c.o.requires

CMakeFiles/Queue_og.dir/queue_tests.c.o.provides: CMakeFiles/Queue_og.dir/queue_tests.c.o.requires
	$(MAKE) -f CMakeFiles/Queue_og.dir/build.make CMakeFiles/Queue_og.dir/queue_tests.c.o.provides.build
.PHONY : CMakeFiles/Queue_og.dir/queue_tests.c.o.provides

CMakeFiles/Queue_og.dir/queue_tests.c.o.provides.build: CMakeFiles/Queue_og.dir/queue_tests.c.o


# Object files for target Queue_og
Queue_og_OBJECTS = \
"CMakeFiles/Queue_og.dir/queue.c.o" \
"CMakeFiles/Queue_og.dir/queue_tests.c.o"

# External object files for target Queue_og
Queue_og_EXTERNAL_OBJECTS =

Queue_og: CMakeFiles/Queue_og.dir/queue.c.o
Queue_og: CMakeFiles/Queue_og.dir/queue_tests.c.o
Queue_og: CMakeFiles/Queue_og.dir/build.make
Queue_og: CMakeFiles/Queue_og.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Queue_og"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Queue_og.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Queue_og.dir/build: Queue_og

.PHONY : CMakeFiles/Queue_og.dir/build

CMakeFiles/Queue_og.dir/requires: CMakeFiles/Queue_og.dir/queue.c.o.requires
CMakeFiles/Queue_og.dir/requires: CMakeFiles/Queue_og.dir/queue_tests.c.o.requires

.PHONY : CMakeFiles/Queue_og.dir/requires

CMakeFiles/Queue_og.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Queue_og.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Queue_og.dir/clean

CMakeFiles/Queue_og.dir/depend:
	cd /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles/Queue_og.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Queue_og.dir/depend

