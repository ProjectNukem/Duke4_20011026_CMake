project(ImpGMA)
add_library(ImpGMA SHARED ImpGMA.cpp)
set_target_properties(ImpGMA PROPERTIES SUFFIX ".p")
target_link_libraries(ImpGMA PRIVATE Cannibal xcore)

target_include_directories(ImpGMA PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(ImpGMA PRIVATE IMPGMA_EXPORTS KRN_DLL)
