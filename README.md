# SDL-n-Cmake

This is an example repository for a C++ project that depends on SDL2. It will generate a compileable solution using CMake and fetch the SDL project from the internet.

It uses [FetchContent](https://cmake.org/cmake/help/latest/module/FetchContent.html) to retrieve and enable the SDL package. SDL is added as a dependency and will be built as part of your project.

## Requirements

CMake version 3.21 or greater (Why? Because it was the version when I downloaded CMake.)
VC++/G++ (I'm not sure of a version restriction on this, probably a version from the last decade.)

## Running

1. Clone the repository somewhere on your machine.
1. Create a build directory in the root directory `/SDL-n-Cmake/build`
1. CD into the directory and run `cmake ..`
1. The output should be present in the `/SDL-n-Cmake/bin` directory

## Cross-Platform Compilation

This project will run on Windows and Linux. I haven't tested it on macOS.

### Scripts

#### Windows Scripts

All Windows scripts are under the scripts/win directory. There are batch files that will generate a Visual Studio solution, Generate and Open the solution, Clean the build directories, Build the solution, and Open the solution. 

There is also a config script that will allow you to define the project name and directories (Not reflected in the CMake scripts!) but handy if you copy this repository to start your own project.

#### Linux Scripts

All Linux scripts are under the scripts/nix directory. I don't do a lot of unix/linux development. So these scripts are centered around makefile project generaton. You will see scripts that Generate a makefile solution, Clean the build directories, and Build the project.

### Linux Requirements

When running this project on a linux install on a virtual machine I was required to manually install the following packages.
- xorg-dev
- libgl1-mesa-glx

I'm not sure if that would be necessary if you are running on a physical machine.