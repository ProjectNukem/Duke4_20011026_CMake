project(vidglide)
add_library(vidglide SHARED)

set(SOURCE_FILES
    font.cpp
    main.cpp
    vid_main.cpp
    vidtex.cpp)

source_group("src" FILES ${SOURCE_FILES})
target_sources(vidglide PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    vidglide.h
    vidglide.def)

source_group("inc" FILES ${SOURCE_FILES})
target_sources(vidglide PRIVATE ${SOURCE_FILES})

target_include_directories(vidglide PRIVATE
    ${CMAKE_SOURCE_DIR}/CannibalEditor
    ${CMAKE_SOURCE_DIR}/ximage
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(vidglide PRIVATE XCORE_PURE)
target_link_libraries(vidglide PRIVATE xcore ximage)
target_link_options(vidglide PRIVATE "/base:0x23000000")
