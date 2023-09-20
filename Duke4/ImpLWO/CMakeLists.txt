project(ImpLWO)
add_library(ImpLWO SHARED ImpLWO.cpp)
set_target_properties(ImpLWO PROPERTIES SUFFIX ".p")
target_link_libraries(ImpLWO PRIVATE Cannibal xcore)

target_include_directories(ImpLWO PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(ImpLWO PRIVATE IMPLWO_EXPORTS KRN_DLL)
