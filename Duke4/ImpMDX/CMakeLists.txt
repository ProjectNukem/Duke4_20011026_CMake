project(ImpMDX)
add_library(ImpMDX SHARED ImpMDX.cpp ImpMDX.rc resource.h)
set_target_properties(ImpMDX PROPERTIES SUFFIX ".p")
target_link_libraries(ImpMDX PRIVATE Cannibal xcore)

target_include_directories(ImpMDX PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(ImpMDX PRIVATE IMPMDX_EXPORTS KRN_DLL)
