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

# Include any dependencies generated for this target.
include tests/CMakeFiles/events.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/events.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/events.dir/flags.make

tests/CMakeFiles/events.dir/events.c.obj: tests/CMakeFiles/events.dir/flags.make
tests/CMakeFiles/events.dir/events.c.obj: tests/CMakeFiles/events.dir/includes_C.rsp
tests/CMakeFiles/events.dir/events.c.obj: ../tests/events.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/events.dir/events.c.obj"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\events.dir\events.c.obj   -c D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\tests\events.c

tests/CMakeFiles/events.dir/events.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/events.dir/events.c.i"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\tests\events.c > CMakeFiles\events.dir\events.c.i

tests/CMakeFiles/events.dir/events.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/events.dir/events.c.s"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\tests\events.c -o CMakeFiles\events.dir\events.c.s

tests/CMakeFiles/events.dir/events.c.obj.requires:

.PHONY : tests/CMakeFiles/events.dir/events.c.obj.requires

tests/CMakeFiles/events.dir/events.c.obj.provides: tests/CMakeFiles/events.dir/events.c.obj.requires
	$(MAKE) -f tests\CMakeFiles\events.dir\build.make tests/CMakeFiles/events.dir/events.c.obj.provides.build
.PHONY : tests/CMakeFiles/events.dir/events.c.obj.provides

tests/CMakeFiles/events.dir/events.c.obj.provides.build: tests/CMakeFiles/events.dir/events.c.obj


tests/CMakeFiles/events.dir/__/deps/getopt.c.obj: tests/CMakeFiles/events.dir/flags.make
tests/CMakeFiles/events.dir/__/deps/getopt.c.obj: tests/CMakeFiles/events.dir/includes_C.rsp
tests/CMakeFiles/events.dir/__/deps/getopt.c.obj: ../deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/events.dir/__/deps/getopt.c.obj"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\events.dir\__\deps\getopt.c.obj   -c D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\deps\getopt.c

tests/CMakeFiles/events.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/events.dir/__/deps/getopt.c.i"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\deps\getopt.c > CMakeFiles\events.dir\__\deps\getopt.c.i

tests/CMakeFiles/events.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/events.dir/__/deps/getopt.c.s"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && C:\PROGRA~2\Rtools\GCC-46~1.3\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\deps\getopt.c -o CMakeFiles\events.dir\__\deps\getopt.c.s

tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.requires:

.PHONY : tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.requires

tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.provides: tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.requires
	$(MAKE) -f tests\CMakeFiles\events.dir\build.make tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.provides.build
.PHONY : tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.provides

tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.provides.build: tests/CMakeFiles/events.dir/__/deps/getopt.c.obj


# Object files for target events
events_OBJECTS = \
"CMakeFiles/events.dir/events.c.obj" \
"CMakeFiles/events.dir/__/deps/getopt.c.obj"

# External object files for target events
events_EXTERNAL_OBJECTS =

tests/events.exe: tests/CMakeFiles/events.dir/events.c.obj
tests/events.exe: tests/CMakeFiles/events.dir/__/deps/getopt.c.obj
tests/events.exe: tests/CMakeFiles/events.dir/build.make
tests/events.exe: src/libglfw3.a
tests/events.exe: tests/CMakeFiles/events.dir/linklibs.rsp
tests/events.exe: tests/CMakeFiles/events.dir/objects1.rsp
tests/events.exe: tests/CMakeFiles/events.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable events.exe"
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\events.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/events.dir/build: tests/events.exe

.PHONY : tests/CMakeFiles/events.dir/build

tests/CMakeFiles/events.dir/requires: tests/CMakeFiles/events.dir/events.c.obj.requires
tests/CMakeFiles/events.dir/requires: tests/CMakeFiles/events.dir/__/deps/getopt.c.obj.requires

.PHONY : tests/CMakeFiles/events.dir/requires

tests/CMakeFiles/events.dir/clean:
	cd /d D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests && $(CMAKE_COMMAND) -P CMakeFiles\events.dir\cmake_clean.cmake
.PHONY : tests/CMakeFiles/events.dir/clean

tests/CMakeFiles/events.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2 D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\tests D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests D:\University\OP\opengl_learn\opengl_learn\lib\glfw-3.1.2\build\tests\CMakeFiles\events.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/events.dir/depend

