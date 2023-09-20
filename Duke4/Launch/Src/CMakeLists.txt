project(Launch)
add_executable(Launch WIN32)
set_target_properties(Launch PROPERTIES OUTPUT_NAME DukeForever)

set(SOURCE_FILES
    Launch.cpp
    LaunchPrivate.h
    Res/LaunchRes.h)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(Launch PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Res/LaunchRes.rc
    Res/Unreal.ico)

source_group("Res" FILES ${SOURCE_FILES})
target_sources(Launch PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Fortify.c
    Fortify.doc
    Fortify.h
    Ufortify.h
    Ufortify.hpp
    Zfortify.cpp
    Zfortify.hpp)

source_group("Fortify" FILES ${SOURCE_FILES})
target_sources(Launch PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    BugslayerUtil.h
    CrashHandler.h
    CriticalSection.h
    DiagAssert.h
    MemDumperValidator.h
    MemStress.h
    MSJDBG.h
    PSAPI.H
    SymbolEngine.h
    WarningsOff.h
    WarningsOn.h
    BugslayerUtil.lib)

source_group("Bugslayer" FILES ${SOURCE_FILES})
target_sources(Launch PRIVATE ${SOURCE_FILES})

target_sources(Launch PRIVATE Res/Logo.bmp)

target_include_directories(Launch PRIVATE
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Window/Inc
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/Engine/Src)

target_compile_definitions(Launch PRIVATE UNICODE _UNICODE)
target_link_options(Launch PRIVATE "/base:0x10900000")
target_link_libraries(Launch PRIVATE Engine)
target_link_directories(Launch PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
