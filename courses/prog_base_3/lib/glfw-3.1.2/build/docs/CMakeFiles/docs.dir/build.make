# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.5

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build

# Utility rule file for docs.

# Include the progress variables for this target.
include docs/CMakeFiles/docs.dir/progress.make

docs/CMakeFiles/docs:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating HTML documentation"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\docs && "C:\Program Files\doxygen\bin\doxygen.exe"

docs: docs/CMakeFiles/docs
docs: docs/CMakeFiles/docs.dir/build.make

.PHONY : docs

# Rule to build all files generated by this target.
docs/CMakeFiles/docs.dir/build: docs

.PHONY : docs/CMakeFiles/docs.dir/build

docs/CMakeFiles/docs.dir/clean:
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\docs && $(CMAKE_COMMAND) -P CMakeFiles\docs.dir\cmake_clean.cmake
.PHONY : docs/CMakeFiles/docs.dir/clean

docs/CMakeFiles/docs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2 D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\docs D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\docs D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\docs\CMakeFiles\docs.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : docs/CMakeFiles/docs.dir/depend

