# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build

# Include any dependencies generated for this target.
include math/CMakeFiles/MathFuncs.dir/depend.make

# Include the progress variables for this target.
include math/CMakeFiles/MathFuncs.dir/progress.make

# Include the compile flags for this target's objects.
include math/CMakeFiles/MathFuncs.dir/flags.make

math/CMakeFiles/MathFuncs.dir/math_func.c.o: math/CMakeFiles/MathFuncs.dir/flags.make
math/CMakeFiles/MathFuncs.dir/math_func.c.o: ../math/math_func.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object math/CMakeFiles/MathFuncs.dir/math_func.c.o"
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/MathFuncs.dir/math_func.c.o   -c /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/math/math_func.c

math/CMakeFiles/MathFuncs.dir/math_func.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MathFuncs.dir/math_func.c.i"
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/math/math_func.c > CMakeFiles/MathFuncs.dir/math_func.c.i

math/CMakeFiles/MathFuncs.dir/math_func.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MathFuncs.dir/math_func.c.s"
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/math/math_func.c -o CMakeFiles/MathFuncs.dir/math_func.c.s

math/CMakeFiles/MathFuncs.dir/math_func.c.o.requires:
.PHONY : math/CMakeFiles/MathFuncs.dir/math_func.c.o.requires

math/CMakeFiles/MathFuncs.dir/math_func.c.o.provides: math/CMakeFiles/MathFuncs.dir/math_func.c.o.requires
	$(MAKE) -f math/CMakeFiles/MathFuncs.dir/build.make math/CMakeFiles/MathFuncs.dir/math_func.c.o.provides.build
.PHONY : math/CMakeFiles/MathFuncs.dir/math_func.c.o.provides

math/CMakeFiles/MathFuncs.dir/math_func.c.o.provides.build: math/CMakeFiles/MathFuncs.dir/math_func.c.o

# Object files for target MathFuncs
MathFuncs_OBJECTS = \
"CMakeFiles/MathFuncs.dir/math_func.c.o"

# External object files for target MathFuncs
MathFuncs_EXTERNAL_OBJECTS =

math/libMathFuncs.a: math/CMakeFiles/MathFuncs.dir/math_func.c.o
math/libMathFuncs.a: math/CMakeFiles/MathFuncs.dir/build.make
math/libMathFuncs.a: math/CMakeFiles/MathFuncs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libMathFuncs.a"
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && $(CMAKE_COMMAND) -P CMakeFiles/MathFuncs.dir/cmake_clean_target.cmake
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MathFuncs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
math/CMakeFiles/MathFuncs.dir/build: math/libMathFuncs.a
.PHONY : math/CMakeFiles/MathFuncs.dir/build

math/CMakeFiles/MathFuncs.dir/requires: math/CMakeFiles/MathFuncs.dir/math_func.c.o.requires
.PHONY : math/CMakeFiles/MathFuncs.dir/requires

math/CMakeFiles/MathFuncs.dir/clean:
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math && $(CMAKE_COMMAND) -P CMakeFiles/MathFuncs.dir/cmake_clean.cmake
.PHONY : math/CMakeFiles/MathFuncs.dir/clean

math/CMakeFiles/MathFuncs.dir/depend:
	cd /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件 /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/math /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math /home/caohang/code/melvin/git/Linux/language/script/cmake/source/01_可执行文件/build/math/CMakeFiles/MathFuncs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : math/CMakeFiles/MathFuncs.dir/depend

