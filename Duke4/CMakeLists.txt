cmake_minimum_required(VERSION 3.00)
project(Duke4 C CXX ASM_MASM ASM_NASM)

# Output binaries to the System directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/System)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# Set configuration-specific compiler flags
set(CMAKE_C_FLAGS_RELEASE "/MD /O2 /Ob2 /DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE ${CMAKE_C_FLAGS_RELEASE})
set(CMAKE_C_FLAGS_DEBUG "/MDd /Od /D_DEBUG")
set(CMAKE_CXX_FLAGS_DEBUG ${CMAKE_C_FLAGS_DEBUG})

# There are multiple locations in the source that invoke
# va_start with a C++ reference. Newer versions of VS need
# this to be defined in order to suppress errors for it.
add_compile_definitions(_CRT_NO_VA_START_VALIDATION)

# Add default compile options (structure packing, etc)
add_compile_options("/G6" "/GX" "/vd0" "/Zp4")
add_compile_definitions(WINDOWS_IGNORE_PACKING_MISMATCH)

# Add MSVC conformance options
if (MSVC_VERSION GREATER_EQUAL 1400)
    add_compile_options("/Zc:forScope-" "/Zc:wchar_t-")
endif()

# Environment
cmake_path(CONVERT "$ENV{MASM_BIN}" TO_CMAKE_PATH_LIST MASM_BIN)
set(MASM_DIR ${MASM_BIN} CACHE PATH "Path to directory containing ML.EXE")

# Set MASM and NASM locations
set(CMAKE_ASM_MASM_COMPILER "${MASM_DIR}/ML.EXE")

# The Visual Studio generator seems to ignore CMAKE_ASM_NASM_COMPILE_OBJECT,
# so for that scenario we'll just allow CMake to fall back to whatever NASM
# is installed on the machine.
if ("${CMAKE_GENERATOR}" STREQUAL "NMake Makefiles")
    set(CMAKE_ASM_NASM_COMPILER "${CMAKE_SOURCE_DIR}/BIN/NASM/NASM.EXE")

    # We don't want to forward include paths or defines to NASM, because it breaks the compile.
    # Notably, the build of NASM included with the leaked source can't handle -I include paths.
    set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -DWIN32 -o <OBJECT> <SOURCE>")
endif()

# DirectX
include_directories(DirectX8/Inc)
link_directories(DirectX8/Lib)

# Projects
add_subdirectory(Cannibal)
add_subdirectory(CannibalEditor)
add_subdirectory(CblMacEd)
add_subdirectory(D3DDrv)
add_subdirectory(DukeEd)
add_subdirectory(Editor)
add_subdirectory(Engine)
add_subdirectory(Fire)
add_subdirectory(Galaxy)
add_subdirectory(GalaxyLib)
#add_subdirectory(GlideDrv)
add_subdirectory(Imp3DS)
add_subdirectory(ImpBP2)
#add_subdirectory(ImpC3S)
add_subdirectory(ImpGMA)
add_subdirectory(ImpLWO)
add_subdirectory(ImpMDX)
add_subdirectory(Launch)
add_subdirectory(SoftDrv)
add_subdirectory(UCC)
add_subdirectory(UWeb)
add_subdirectory(xcore)
add_subdirectory(ximage)
