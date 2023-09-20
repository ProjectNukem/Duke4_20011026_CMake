project(vidd3d)
add_library(vidd3d SHARED)

set(SOURCE_FILES
    main.cpp)

source_group("Source Files" FILES ${SOURCE_FILES})
target_sources(vidd3d ${SOURCE_FILES})

target_include_directories(vidd3d PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/ximage)

target_compile_definitions(vidd3d PRIVATE VIDD3D_EXPORTS)
