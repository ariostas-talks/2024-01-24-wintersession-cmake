# Variables can be defined with the set command
set(x "Hello World") # x is a string

set(y Hello World) # y is a list
set(z "Hello;World") # z is the same as y

# Variables can be accessed as follows
message(STATUS "x is ${x}")
message(STATUS "y is ${y}")
message(STATUS "z is ${z}")

# Variables can be dereferenced recursively
set(a hello)
set(b a)
message(STATUS "${${b}}")

# We can define boolean and numeric variables
set(c TRUE) # Can also be ON, YES, Y, 1
set(d 1) # Only supports integers, floats get truncated

# We can have string comparisons
if(x STREQUAL "Hello World")
    message(STATUS "x is Hello World")
else()
    message(STATUS "x is not Hello World")
endif()

# We can also do numeric comparisons
if(d LESS 2)
    message(STATUS "d is less than 2")
else()
    message(STATUS "d is not less than 2")
endif()

# We can have for loops
foreach(i RANGE 1 10)
    message(STATUS "i is ${i}")
endforeach()

set(colors red green blue)
foreach(color ${colors})
    message(STATUS "color is ${color}")
endforeach()

# Can do everything you would expect from a scripting language (functions, math, etc.)