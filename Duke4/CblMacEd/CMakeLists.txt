project(CblMacEd)
add_executable(CblMacEd WIN32 CblMacEd.cpp)
target_link_libraries(CblMacEd PRIVATE Cannibal)
target_compile_definitions(CblMacEd PRIVATE KRN_DLL)

target_include_directories(CblMacEd PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/xcore)
