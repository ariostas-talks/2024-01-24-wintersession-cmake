# Compiling a simple project

In this directory we have a `simple.cpp` file. Let's write `CMakeLists.txt` to compile it with CMake.

The first thing we need is to set the minimum CMake requirements. We can do this as follows.

```cmake
cmake_minimum_required(VERSION 3.14...3.28)
```

We also need to set the project name, and let's also set the version, description and languages.

```cmake
project(OurProject
  VERSION
    1.0.0
  DESCRIPTION
    "A simple project"
  LANGUAGES
    CXX
)
```

Whitespaces are ignored, so it's better to make it more readable than to keep everything in one line.

Finally, we need to tell it to build an executable out of our cpp file. We do it like this.

```cmake
add_executable(runme simple.cpp)
```

Finally, let's do the build procedure as discussed in example 1.

```bash
cmake -S . -B build
cmake --build build
./build/runme
```

Typically, during compilation you'll want to set some variables. This could be to specify the build type, give the location of a dependency installed in a non-standard path, enable or disable some features, etc. Variables can be set with the `-D` flag. The most important variables are cached and stored in `CMakeCache.txt` so that they are used during the build process. A list of the available cached variables can be printed with the `-L` flag (or `-LH` to make them more human readable). Cached variables are defined as follows.

```cmake
set(MY_CACHE_VAR "Example cached variable" CACHE STRING "Some description")
# There is a simplified syntax for boolean cached variables
option(MY_OPTION "Example toggle" OFF)
```

One thing to keep in mind is that by default CMake configures unoptimized builds (unless there is code that checks this in CMakeLists.txt). You can optimize the build by setting the build type to "Release".

```bash
cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
```

If you have multiple compilers installed you can select one by setting the `CXX` environment variable.

```bash
CXX=clang++ cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
```

You can check that these options are saved in `CMakeCache.txt`.