project(Galaxy)
add_library(Galaxy SHARED)

set(SOURCE_FILES
    A3D.cpp
    A3D.h
    ../Hdr/GALAXY.H
    ia3dapi.h
    UnGalaxy.cpp)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(Galaxy PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Mss.h
    Mss32.lib)

source_group("Miles6" FILES ${SOURCE_FILES})
target_sources(Galaxy PRIVATE ${SOURCE_FILES})

target_link_directories(Galaxy PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(Galaxy PRIVATE Engine GalaxyLib)
target_link_options(Galaxy PRIVATE "/base:0x10600000")

target_include_directories(Galaxy PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ../Hdr
    ${CMAKE_SOURCE_DIR}/Render/Src
    ${CMAKE_SOURCE_DIR}/Engine/Src)

target_compile_definitions(Galaxy PRIVATE UNICODE _UNICODE)
