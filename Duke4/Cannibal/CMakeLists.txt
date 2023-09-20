project(Cannibal CXX ASM_MASM)
add_library(Cannibal SHARED)

set(SOURCE_FILES
    CorMain.cpp
    CorMain.h
    Kernel.cpp
    Kernel.h
    KrnBuild.h
    KrnDefs.h
    KrnInc.h
    KrnTypes.h
    msg.asm
    StrMain.cpp
    StrMain.h)

source_group("Kernel" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    MathFlt.h
    VecMain.h
    VecPrim.h)

source_group("Mathematics" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    LogMain.cpp
    LogMain.h)

source_group("Logging" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    TimeMain.cpp
    TimeMain.h)

source_group("Timing" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    MemMain.cpp
    MemMain.h)

source_group("Memory" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    FileBox.cpp
    FileBox.h
    FileMain.cpp
    FileMain.h)

source_group("Files" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    LexMain.cpp
    LexMain.h
    PrsMain.cpp
    PrsMain.h)

source_group("Parsing" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    MsgMain.cpp
    MsgMain.h
    ObjMain.cpp
    ObjMain.h)

source_group("Objects" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    InDefs.h
    InMain.cpp
    InMain.h
    InWin.cpp
    InWin.h)

source_group("Input" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    CpjFmt.h
    CpjFrm.cpp
    CpjGeo.cpp
    CpjGeo.h
    CpjLod.cpp
    CpjLod.h
    CpjMac.cpp
    CpjMac.h
    CpjMain.cpp
    CpjMain.h
    CpjProj.cpp
    CpjProj.h
    CpjSeq.cpp
    CpjSeq.h
    CpjSkl.cpp
    CpjSkl.h
    CpjSrf.cpp
    CpjSrf.h)

source_group("Models/Project Files" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Res/CpjCpj.bmp
    Res/CpjFrm.bmp
    Res/CpjGeo.bmp
    Res/CpjLod.bmp
    Res/CpjMac.bmp
    Res/CpjSeq.bmp
    Res/CpjSkl.bmp
    Res/CpjSrf.bmp
    Res/FileClosed.bmp
    Res/FileOpen.bmp
    Res/MacEdit.rc
    Res/resource.h)

source_group("Models/Model Actors/Res" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    MacEdit.cpp
    MacEdit.h
    MacMain.cpp
    MacMain.h)

source_group("Models/Model Actors" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    PlgMain.cpp
    PlgMain.h)

source_group("Plugins" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    IpcMain.cpp
    IpcMain.h
    WinCtrl.cpp
    WinCtrl.h)

source_group("Platform" FILES ${SOURCE_FILES})
target_sources(Cannibal PRIVATE ${SOURCE_FILES})
target_sources(Cannibal PRIVATE Cannibal.h)

set_source_files_properties(msg.asm PROPERTIES LANGUAGE ASM_MASM)
string(APPEND CMAKE_ASM_MASM_FLAGS " /c /coff /Cp /Cx")
string(APPEND CMAKE_ASM_MASM_FLAGS_DEBUG " /Zd /Zi /Zf")

target_compile_definitions(Cannibal PRIVATE CANNIBAL_EXPORTS KRN_EXPORTS KRN_DLL XCORE_PURE)
target_include_directories(Cannibal PRIVATE ${CMAKE_SOURCE_DIR}/Core/Inc ${CMAKE_SOURCE_DIR}/xcore)
target_link_libraries(Cannibal PRIVATE xcore comctl32)
target_link_directories(Cannibal PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/mrg/lib)
target_link_options(Cannibal PRIVATE "/nodefaultlib:LIBC")
