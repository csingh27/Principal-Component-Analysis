# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /opt/cmake-3.18.0-rc3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.18.0-rc3-Linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/cs/C++ Test/excercise1/geometry"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/cs/C++ Test/excercise1/geometry"

# Include any dependencies generated for this target.
include CMakeFiles/ar_geometry.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ar_geometry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ar_geometry.dir/flags.make

CMakeFiles/ar_geometry.dir/src/sphere.cpp.o: CMakeFiles/ar_geometry.dir/flags.make
CMakeFiles/ar_geometry.dir/src/sphere.cpp.o: src/sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs/C++ Test/excercise1/geometry/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ar_geometry.dir/src/sphere.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ar_geometry.dir/src/sphere.cpp.o -c "/home/cs/C++ Test/excercise1/geometry/src/sphere.cpp"

CMakeFiles/ar_geometry.dir/src/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ar_geometry.dir/src/sphere.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs/C++ Test/excercise1/geometry/src/sphere.cpp" > CMakeFiles/ar_geometry.dir/src/sphere.cpp.i

CMakeFiles/ar_geometry.dir/src/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ar_geometry.dir/src/sphere.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs/C++ Test/excercise1/geometry/src/sphere.cpp" -o CMakeFiles/ar_geometry.dir/src/sphere.cpp.s

CMakeFiles/ar_geometry.dir/src/box.cpp.o: CMakeFiles/ar_geometry.dir/flags.make
CMakeFiles/ar_geometry.dir/src/box.cpp.o: src/box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs/C++ Test/excercise1/geometry/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ar_geometry.dir/src/box.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ar_geometry.dir/src/box.cpp.o -c "/home/cs/C++ Test/excercise1/geometry/src/box.cpp"

CMakeFiles/ar_geometry.dir/src/box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ar_geometry.dir/src/box.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs/C++ Test/excercise1/geometry/src/box.cpp" > CMakeFiles/ar_geometry.dir/src/box.cpp.i

CMakeFiles/ar_geometry.dir/src/box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ar_geometry.dir/src/box.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs/C++ Test/excercise1/geometry/src/box.cpp" -o CMakeFiles/ar_geometry.dir/src/box.cpp.s

CMakeFiles/ar_geometry.dir/src/mesh.cpp.o: CMakeFiles/ar_geometry.dir/flags.make
CMakeFiles/ar_geometry.dir/src/mesh.cpp.o: src/mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs/C++ Test/excercise1/geometry/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ar_geometry.dir/src/mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ar_geometry.dir/src/mesh.cpp.o -c "/home/cs/C++ Test/excercise1/geometry/src/mesh.cpp"

CMakeFiles/ar_geometry.dir/src/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ar_geometry.dir/src/mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs/C++ Test/excercise1/geometry/src/mesh.cpp" > CMakeFiles/ar_geometry.dir/src/mesh.cpp.i

CMakeFiles/ar_geometry.dir/src/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ar_geometry.dir/src/mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs/C++ Test/excercise1/geometry/src/mesh.cpp" -o CMakeFiles/ar_geometry.dir/src/mesh.cpp.s

CMakeFiles/ar_geometry.dir/src/capsule.cpp.o: CMakeFiles/ar_geometry.dir/flags.make
CMakeFiles/ar_geometry.dir/src/capsule.cpp.o: src/capsule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs/C++ Test/excercise1/geometry/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ar_geometry.dir/src/capsule.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ar_geometry.dir/src/capsule.cpp.o -c "/home/cs/C++ Test/excercise1/geometry/src/capsule.cpp"

CMakeFiles/ar_geometry.dir/src/capsule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ar_geometry.dir/src/capsule.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs/C++ Test/excercise1/geometry/src/capsule.cpp" > CMakeFiles/ar_geometry.dir/src/capsule.cpp.i

CMakeFiles/ar_geometry.dir/src/capsule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ar_geometry.dir/src/capsule.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs/C++ Test/excercise1/geometry/src/capsule.cpp" -o CMakeFiles/ar_geometry.dir/src/capsule.cpp.s

# Object files for target ar_geometry
ar_geometry_OBJECTS = \
"CMakeFiles/ar_geometry.dir/src/sphere.cpp.o" \
"CMakeFiles/ar_geometry.dir/src/box.cpp.o" \
"CMakeFiles/ar_geometry.dir/src/mesh.cpp.o" \
"CMakeFiles/ar_geometry.dir/src/capsule.cpp.o"

# External object files for target ar_geometry
ar_geometry_EXTERNAL_OBJECTS =

libar_geometry.so: CMakeFiles/ar_geometry.dir/src/sphere.cpp.o
libar_geometry.so: CMakeFiles/ar_geometry.dir/src/box.cpp.o
libar_geometry.so: CMakeFiles/ar_geometry.dir/src/mesh.cpp.o
libar_geometry.so: CMakeFiles/ar_geometry.dir/src/capsule.cpp.o
libar_geometry.so: CMakeFiles/ar_geometry.dir/build.make
libar_geometry.so: CMakeFiles/ar_geometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/cs/C++ Test/excercise1/geometry/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libar_geometry.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ar_geometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ar_geometry.dir/build: libar_geometry.so

.PHONY : CMakeFiles/ar_geometry.dir/build

CMakeFiles/ar_geometry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ar_geometry.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ar_geometry.dir/clean

CMakeFiles/ar_geometry.dir/depend:
	cd "/home/cs/C++ Test/excercise1/geometry" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/cs/C++ Test/excercise1/geometry" "/home/cs/C++ Test/excercise1/geometry" "/home/cs/C++ Test/excercise1/geometry" "/home/cs/C++ Test/excercise1/geometry" "/home/cs/C++ Test/excercise1/geometry/CMakeFiles/ar_geometry.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ar_geometry.dir/depend

