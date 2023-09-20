project(UCC)

set(SOURCE_FILES
    UCC.cpp)

source_group("Src" FILES ${SOURCE_FILES})
add_executable(UCC ${SOURCE_FILES})
target_link_libraries(UCC PRIVATE Engine)
target_compile_definitions(UCC PRIVATE UNICODE _UNICODE)

target_include_directories(UCC PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Src)
