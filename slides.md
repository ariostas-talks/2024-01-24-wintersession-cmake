[comment]: # (This presentation was made with markdown-slides)
[comment]: # (Can be found here: https://gitlab.com/da_doomer/markdown-slides)
[comment]: # (Compile this presentation with the command below)
[comment]: # (mdslides slides.md)

[comment]: # (Set the theme:)
[comment]: # (THEME = white)
[comment]: # (CODE_THEME = github)

[comment]: # (controls: true)
[comment]: # (keyboard: true)
[comment]: # (markdown: { smartypants: true })
[comment]: # (hash: false)
[comment]: # (respondToHashChanges: false)

## Introduction to CMake

Andres Rios Tascon | Wintersession 2024 | Jan 24, 2024

[comment]: # (!!!)

## Before we start

Navigate to the following link.

https://github.com/ariostas-talks/2024-01-24-wintersession-cmake

<small>
Click on Code > Codespaces > Create codespace on main.
</small>

[comment]: # (!!!)

## What is CMake?

CMake (Cross-platform `make`) is a very popular build system **generator**, mainly used for C, C++ and Fortran projects.

[comment]: # (!!!)

## Build Systems

Tools that are used to run the chain of long commands needed to compile and build software packages.

**Examples:** `make`, `ninja`, `boost.build`, `rake`

Mostly hand-coded, platform-dependent, not aware of dependencies.

[comment]: # (!!!)

## Build System Generators

Provide a higher level of abstraction. They take care of the details of the platform you are using to set up a build system accordingly.

**Examples:** `Autotools`, `Bazel`, `CMake`

[comment]: # (!!!)

## Building with CMake

Let's start with a simple scenario that you've probably encountered before. You downloaded some library and you need to build it with CMake.

[Go to the `example1` directory in Codespaces]

[comment]: # (!!!)

## How does CMake know what to do?

[comment]: # (!!! data-auto-animate)

## How does CMake know what to do?

A: It's in the CMakeLists.txt file!

[comment]: # (!!! data-auto-animate)

## How does CMake know what to do?

A: It's in the CMakeLists.txt file!

The goal for today is to learn how to write CMakeLists.txt files for our projects.

[comment]: # (!!! data-auto-animate)

## CMake syntax

Let's start by looking at the syntax that CMake uses. It's a little unusual, but it's easy to understand.

[comment]: # (!!! data-auto-animate)

## CMake syntax

These are the main things to keep in mind.

- Comments start with #
- Commands are case-insensitive
- Variables are case-sensitive and dynamically-typed
- Keywords are in upper case

Lines will typically have the form
<small>
`command(var_or_const KEYWORD var_or_const)`
</small>

[comment]: # (!!! data-auto-animate)

## CMake scripts

CMake is a fully-fledged scripting language. We can write scripts with `.cmake` extensions and run them with `cmake -P`.

Fun example: https://github.com/64/cmake-raytracer

[Go to the `example2` directory in Codespaces]

[comment]: # (!!!)

## Building a simple project

`CMakeLists.txt` only has two required commands:

- `cmake_minimum_required`: Can take a specific version or a range. CMake will act as the highest supported version in the range.

The bare minimum should be 3.4, but ideally the minimum should be around 3.14 so that most "modern" features are available. More info [here](https://cliutils.gitlab.io/modern-cmake/chapters/intro/dodonot.html).

[comment]: # (!!! data-auto-animate)

## Building a simple project

`CMakeLists.txt` only has two required commands:

- `cmake_minimum_required`: Can take a specific version or a range. CMake will act as the highest supported version in the range.
- `project`: Must give it a name, can also set version, description, languages, and url.

[comment]: # (!!! data-auto-animate)

## Building a simple project

Let's build a simple binary project.

[Go to the `example3` directory in Codespaces]

[comment]: # (!!! data-auto-animate)

## Exercise 1

Let's do something similar to what we just did, but now building a library instead of an executable.

[Go to the `exercise1` directory in Codespaces]

[comment]: # (!!!)

## Example 4

Now that we know the very basics of CMake, let's take a look at a more extended project to see how your project should look like.

[Go to the `example4` directory in Codespaces]

[comment]: # (!!!)

## Exercise 2

Finally, to give you a chance to explore a bit more the structure of the previous project, let's make a simple modification.

[Go to the `exercise2` directory in Codespaces]

[comment]: # (!!!)

There's many more things to learn, but with what you learned today you should be able to get started and at least be able to roughly figure out what the CMakeLists.txt files you encounter are doing. There are links in the main readme of this repo with useful resources.

