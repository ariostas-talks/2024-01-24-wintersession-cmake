# Building software with CMake

Let's start by downloading the CLI11 command-line parser with the following command.

```bash
git clone https://github.com/CLIUtils/CLI11.git
cd CLI11
```

The modern way to generate the build scripts, build it, and run the test target is with the following commands.

```bash
cmake -S . -B build
cmake --build build -j 2
cmake --build build -t test
```

This is equivalent to the more common procedure that you might be familiar with:

```bash
make build
cd build
cmake ..
make -j 2
make test
```

Notice that by default CMake uses Unix Makefiles as the default build system. A different one can be picked with the `-G` flag.

```bash
make build
cd build
cmake .. -G Ninja
ninja -j 2
ninja test
```