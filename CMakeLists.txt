cmake_minimum_required(VERSION 3.25)

project(papyrus-vm)

set(CMAKE_CXX_STANDARD 20)

file(GLOB_RECURSE PAPYRUS_VM_SOURCES "src/*.cpp" "src/*.h" "libs/*.cpp" "libs/*.h")

add_library(papyrus-vm STATIC ${PAPYRUS_VM_SOURCES})

target_include_directories(papyrus-vm PUBLIC "libs")