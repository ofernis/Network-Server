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
include CMakeFiles/ContinuousBuild.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ContinuousBuild.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ContinuousBuild.dir/flags.make

CMakeFiles/ContinuousBuild.dir/queue.c.o: CMakeFiles/ContinuousBuild.dir/flags.make
CMakeFiles/ContinuousBuild.dir/queue.c.o: ../queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ContinuousBuild.dir/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ContinuousBuild.dir/queue.c.o   -c /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c

CMakeFiles/ContinuousBuild.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ContinuousBuild.dir/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c > CMakeFiles/ContinuousBuild.dir/queue.c.i

CMakeFiles/ContinuousBuild.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ContinuousBuild.dir/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue.c -o CMakeFiles/ContinuousBuild.dir/queue.c.s

CMakeFiles/ContinuousBuild.dir/queue.c.o.requires:

.PHONY : CMakeFiles/ContinuousBuild.dir/queue.c.o.requires

CMakeFiles/ContinuousBuild.dir/queue.c.o.provides: CMakeFiles/ContinuousBuild.dir/queue.c.o.requires
	$(MAKE) -f CMakeFiles/ContinuousBuild.dir/build.make CMakeFiles/ContinuousBuild.dir/queue.c.o.provides.build
.PHONY : CMakeFiles/ContinuousBuild.dir/queue.c.o.provides

CMakeFiles/ContinuousBuild.dir/queue.c.o.provides.build: CMakeFiles/ContinuousBuild.dir/queue.c.o


CMakeFiles/ContinuousBuild.dir/queue_tests.c.o: CMakeFiles/ContinuousBuild.dir/flags.make
CMakeFiles/ContinuousBuild.dir/queue_tests.c.o: ../queue_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ContinuousBuild.dir/queue_tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ContinuousBuild.dir/queue_tests.c.o   -c /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c

CMakeFiles/ContinuousBuild.dir/queue_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ContinuousBuild.dir/queue_tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c > CMakeFiles/ContinuousBuild.dir/queue_tests.c.i

CMakeFiles/ContinuousBuild.dir/queue_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ContinuousBuild.dir/queue_tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/queue_tests.c -o CMakeFiles/ContinuousBuild.dir/queue_tests.c.s

CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.requires:

.PHONY : CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.requires

CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.provides: CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.requires
	$(MAKE) -f CMakeFiles/ContinuousBuild.dir/build.make CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.provides.build
.PHONY : CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.provides

CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.provides.build: CMakeFiles/ContinuousBuild.dir/queue_tests.c.o


# Object files for target ContinuousBuild
ContinuousBuild_OBJECTS = \
"CMakeFiles/ContinuousBuild.dir/queue.c.o" \
"CMakeFiles/ContinuousBuild.dir/queue_tests.c.o"

# External object files for target ContinuousBuild
ContinuousBuild_EXTERNAL_OBJECTS =

ContinuousBuild: CMakeFiles/ContinuousBuild.dir/queue.c.o
ContinuousBuild: CMakeFiles/ContinuousBuild.dir/queue_tests.c.o
ContinuousBuild: CMakeFiles/ContinuousBuild.dir/build.make
ContinuousBuild: CMakeFiles/ContinuousBuild.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ContinuousBuild"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ContinuousBuild.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ContinuousBuild.dir/build: ContinuousBuild

.PHONY : CMakeFiles/ContinuousBuild.dir/build

CMakeFiles/ContinuousBuild.dir/requires: CMakeFiles/ContinuousBuild.dir/queue.c.o.requires
CMakeFiles/ContinuousBuild.dir/requires: CMakeFiles/ContinuousBuild.dir/queue_tests.c.o.requires

.PHONY : CMakeFiles/ContinuousBuild.dir/requires

CMakeFiles/ContinuousBuild.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ContinuousBuild.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ContinuousBuild.dir/clean

CMakeFiles/ContinuousBuild.dir/depend:
	cd /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug /mnt/c/Users/galwe/OneDrive/Desktop/technion/hw3/Network-Server/cmake-build-debug/CMakeFiles/ContinuousBuild.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ContinuousBuild.dir/depend
