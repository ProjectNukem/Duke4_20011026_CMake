project(UWeb)
add_library(UWeb SHARED)

set(SOURCE_FILES
    UWeb.cpp
    WebServer.cpp)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(UWeb PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    UWebPrivate.h)

source_group("Inc" FILES ${SOURCE_FILES})
target_sources(UWeb PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "../Classes/*.uc")
source_group("Classes" FILES ${SOURCE_FILES})
target_sources(UWeb PRIVATE ${SOURCE_FILES})

target_include_directories(UWeb PRIVATE
    ${CMAKE_SOURCE_DIR}/UWeb/Src
    ${CMAKE_SOURCE_DIR}/UWeb/Inc
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Src)

target_compile_definitions(UWeb PRIVATE UNICODE _UNICODE UWEB_EXPORTS "UWEB_API=__declspec(dllexport)")
target_link_libraries(UWeb PRIVATE Engine)
target_link_options(UWeb PRIVATE "/base:0x10700000")
