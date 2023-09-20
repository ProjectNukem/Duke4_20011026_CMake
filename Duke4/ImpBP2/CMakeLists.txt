project(ImpBP2)
add_library(ImpBP2 SHARED ImpBP2.cpp)
set_target_properties(ImpBP2 PROPERTIES SUFFIX ".p")
target_link_libraries(ImpBP2 PRIVATE Cannibal xcore)

target_include_directories(ImpBP2 PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(ImpBP2 PRIVATE IMPBP2_EXPORTS KRN_DLL)
