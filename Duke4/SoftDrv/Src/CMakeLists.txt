project(SoftDrv)

add_library(SoftDrv SHARED
    DrawPoly.cpp
    DrawSurf.cpp
    DrawTile.cpp
    Hit.cpp
    Line.h
    Line1.h
    Line2D.cpp
    SoftDrv.cpp
    SoftDrvPrivate.h)

target_link_libraries(SoftDrv PRIVATE Engine)
target_link_options(SoftDrv PRIVATE "/base:0x10D00000")
target_compile_definitions(SoftDrv PRIVATE UNICODE _UNICODE)

target_include_directories(SoftDrv PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Src)
