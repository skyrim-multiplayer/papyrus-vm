project(papyrus-vm)

file(GLOB_RECURSE PAPYRUS_VM_SOURCES "src/*.cpp" "src/*.h" "libs/*.cpp" "libs/*.h")`

add_library(papyrus-vm STATIC ${PAPYRUS_VM_SOURCES})