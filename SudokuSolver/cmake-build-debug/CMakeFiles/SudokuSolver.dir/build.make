# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/adamjost/CLionProjects/SudokuSolver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SudokuSolver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SudokuSolver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SudokuSolver.dir/flags.make

CMakeFiles/SudokuSolver.dir/main.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SudokuSolver.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/main.cpp.o -c /Users/adamjost/CLionProjects/SudokuSolver/main.cpp

CMakeFiles/SudokuSolver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamjost/CLionProjects/SudokuSolver/main.cpp > CMakeFiles/SudokuSolver.dir/main.cpp.i

CMakeFiles/SudokuSolver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamjost/CLionProjects/SudokuSolver/main.cpp -o CMakeFiles/SudokuSolver.dir/main.cpp.s

CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o: ../Puzzle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o -c /Users/adamjost/CLionProjects/SudokuSolver/Puzzle.cpp

CMakeFiles/SudokuSolver.dir/Puzzle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/Puzzle.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adamjost/CLionProjects/SudokuSolver/Puzzle.cpp > CMakeFiles/SudokuSolver.dir/Puzzle.cpp.i

CMakeFiles/SudokuSolver.dir/Puzzle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/Puzzle.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adamjost/CLionProjects/SudokuSolver/Puzzle.cpp -o CMakeFiles/SudokuSolver.dir/Puzzle.cpp.s

# Object files for target SudokuSolver
SudokuSolver_OBJECTS = \
"CMakeFiles/SudokuSolver.dir/main.cpp.o" \
"CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o"

# External object files for target SudokuSolver
SudokuSolver_EXTERNAL_OBJECTS =

SudokuSolver: CMakeFiles/SudokuSolver.dir/main.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/Puzzle.cpp.o
SudokuSolver: CMakeFiles/SudokuSolver.dir/build.make
SudokuSolver: CMakeFiles/SudokuSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable SudokuSolver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SudokuSolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SudokuSolver.dir/build: SudokuSolver

.PHONY : CMakeFiles/SudokuSolver.dir/build

CMakeFiles/SudokuSolver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SudokuSolver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SudokuSolver.dir/clean

CMakeFiles/SudokuSolver.dir/depend:
	cd /Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adamjost/CLionProjects/SudokuSolver /Users/adamjost/CLionProjects/SudokuSolver /Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug /Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug /Users/adamjost/CLionProjects/SudokuSolver/cmake-build-debug/CMakeFiles/SudokuSolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SudokuSolver.dir/depend

