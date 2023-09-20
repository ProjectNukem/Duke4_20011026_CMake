project(ImpC3S)
add_library(ImpC3S SHARED ImpC3S.cpp)
set_target_properties(ImpC3S PROPERTIES SUFFIX ".p")
target_link_libraries(ImpC3S PRIVATE Cannibal xcore)

target_include_directories(ImpC3S PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(ImpC3S PRIVATE IMPC3S_EXPORTS KRN_DLL)
