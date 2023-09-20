project(ximage)
add_library(ximage SHARED)

set(SOURCE_FILES
    dll.cpp
    tga.cpp
    image.cpp
    bmp.cpp)

source_group("Source Files" FILES ${SOURCE_FILES})
target_sources(ximage PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    xbmp.h
    ximage.h
    xtga.h)

source_group("Header Files" FILES ${SOURCE_FILES})
target_sources(ximage PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ximage.def)

source_group("Resource Files" FILES ${SOURCE_FILES})
target_sources(ximage PRIVATE ${SOURCE_FILES})

target_link_libraries(ximage PRIVATE xcore)
target_link_options(ximage PRIVATE "/base:0x22000000")
target_compile_definitions(ximage PRIVATE XCORE_PURE XIMAGE_LIBRARY)

target_include_directories(ximage PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_CURRENT_SOURCE_DIR})
