project(Imp3DS)
add_library(Imp3DS SHARED Imp3DS.cpp)
set_target_properties(Imp3DS PROPERTIES SUFFIX ".p")
target_link_libraries(Imp3DS PRIVATE Cannibal xcore)

target_include_directories(Imp3DS PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Cannibal
    ${CMAKE_SOURCE_DIR}/Core/Inc)

target_compile_definitions(Imp3DS PRIVATE IMP3DS_EXPORTS KRN_DLL)
