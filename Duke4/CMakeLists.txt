cmake_minimum_required(VERSION 3.00)
project(Duke4)

# Output binaries to the System directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/System)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# Set necessary compiler flags (structure packing, etc)
set(CMAKE_C_FLAGS_RELEASE "/G6 /Zp4 /GX /vd0 /MD /O2 /Ob2 /DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE ${CMAKE_C_FLAGS_RELEASE})
set(CMAKE_C_FLAGS_DEBUG "/G6 /Zp4 /GX /vd0 /MDd /Od /D_DEBUG")
set(CMAKE_CXX_FLAGS_DEBUG ${CMAKE_C_FLAGS_DEBUG})

# Environment
cmake_path(CONVERT $ENV{MASM_BIN} TO_CMAKE_PATH_LIST MASM_DIR)

# Set MASM and NASM locations
set(CMAKE_ASM_MASM_COMPILER "${MASM_DIR}/ML.EXE")
set(CMAKE_ASM_NASM_COMPILER "${CMAKE_SOURCE_DIR}/BIN/NASM/NASM.EXE")

# We don't want to forward include paths or defines to NASM, because it breaks the compile.
# Notably, the build of NASM included with the leaked source can't handle -I include paths.
set(CMAKE_ASM_NASM_OBJECT_FORMAT win32)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> -f win32 -DWIN32 -o <OBJECT> <SOURCE>")

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
