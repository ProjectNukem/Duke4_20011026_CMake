project(D3DDrv)
add_library(D3DDrv SHARED Direct3D8.cpp)
target_link_libraries(D3DDrv PRIVATE Engine)

if (MSVC_VERSION GREATER_EQUAL 1900)
    target_link_libraries(D3DDrv PRIVATE legacy_stdio_definitions)
endif()

target_include_directories(D3DDrv PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/DirectX7/Inc)

target_compile_definitions(D3DDrv PRIVATE UNICODE _UNICODE D3DDRV_EXPORTS)
