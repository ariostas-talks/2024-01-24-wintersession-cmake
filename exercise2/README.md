# Modifying the extended example

To get you a chance to explore a bit more the extended example we just saw in the example4 directory, try doing the following.

Modify the CMakeLists.txt files so that the package is installable. You'll want the binaries, library, and header files to be copied. When running CMake, configure it so that it installs in the exercise2 directory, instead of the default install path. Note that, in general, you'll have to be careful with how libraries are linked, but for now we won't worry about that.

To make a target installable, you need a command of the following form.

```cmake
install(TARGETS <list of targets>
        DESTINATION <some path>
)
```

Additionally, for the library part you should set the `PUBLIC_HEADER` property with

```cmake
set_target_properties(<target> PROPERTIES PUBLIC_HEADER <list of headers>)
```
And include `PUBLIC_HEADER DESTINATION <some path>` in the install command.