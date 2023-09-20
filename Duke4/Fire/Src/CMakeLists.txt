project(Fire CXX ASM_MASM)
add_library(Fire SHARED)

set_source_files_properties(UnFire.asm UnFireP2.asm UnWater.asm PROPERTIES LANGUAGE ASM_MASM)
string(APPEND CMAKE_ASM_MASM_FLAGS " /c /coff /Cp /Cx")

set(SOURCE_FILES
    FractalPrivate.h
    UnFire.asm
    UnFireP2.asm
    UnFractal.cpp
    UnWater.asm)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(Fire PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "../Classes/*.uc")
source_group("Classes" FILES ${SOURCE_FILES})
target_sources(Fire PRIVATE ${SOURCE_FILES})

target_link_libraries(Fire PRIVATE Engine)
target_link_options(Fire PRIVATE "/base:0x10500000")
target_compile_definitions(Fire PRIVATE UNICODE _UNICODE)

target_include_directories(Fire PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Src)
