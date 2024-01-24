# Compile a simple library

Let's do something similar to what we just did in example 3, but now building a library. There will also be some more complications: there are multiple source files are located in the `src` directory, and they include headers located in the `include` directory. Additionally, the `.cpp` files use `c++17` features, but we want the library to be useable from `c++11` code.

Instead of `add_executable` you'll need `add_library`.

You can set properties of the target that are only needed for the compilation of the target itself with the `PRIVATE` keyword. The `INTERFACE` keyword is used when it is a requirement of the interface to the library, and the `PUBLIC` keyword is used for properties that are needed both for the target itself and the interface. For example, requiring `c++17` for the compilation of the library can be done as follows.

```cmake
target_compile_features(ourlibrary PRIVATE cxx_std_17)
```

You'll need to do something similar to tell CMake which directories should be included with `target_include_directories`.

Since there are multiple cpp files, there is the option of using the GLOB command to get all of them. It is typically discouraged, but if you absolutely need to do it, make sure to also use `CONFIGURE_DEPENDS` so that changes those files are detected during the build process.

Now try writing a CMakeLists.txt on your own!