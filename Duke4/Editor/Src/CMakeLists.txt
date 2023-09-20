project(Editor)
add_library(Editor SHARED)

set(SOURCE_FILES
    CoolBsp.cpp
    EdHook.cpp
    Editor.cpp
    EditorPrivate.h
    TTFontImport.cpp
    UBatchExportCommandlet.cpp
    UBrushBuilder.cpp
    UConformCommandlet.cpp
    UKillUnrealCommandlet.cpp
    UMakeCommandlet.cpp
    UMapConvertCommandlet.cpp
    UMasterCommandlet.cpp
    UMergeDXTCommandlet.cpp
    UnBsp.cpp
    UnEdAct.cpp
    UnEdCam.cpp
    UnEdClick.cpp
    UnEdCnst.cpp
    UnEdCsg.cpp
    UnEdExp.cpp
    UnEdFact.cpp
    UnEditor.cpp
    UnEdRend.cpp
    UnEdSrv.cpp
    UnEdTran.cpp
    UnEdTran.h
    UnMeshEd.cpp
    UnMeshLP.cpp
    UnParams.cpp
    UnScrCom.cpp
    UnShadow.cpp
    UnSyntax.cpp
    UnTopics.cpp
    UnTopics.h
    UnVisi.cpp
    UTextureCheckCommandlet.cpp)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(Editor PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "../Classes/*.uc")
source_group("Classes" FILES ${SOURCE_FILES})
target_sources(Editor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ../Inc/Editor.h
    ../Inc/EditorClasses.h
    ../Inc/UBrushBuilder.h)

source_group("Inc" FILES ${SOURCE_FILES})
target_sources(Editor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/System/Editor.int)

source_group("Int" FILES ${SOURCE_FILES})
target_sources(Editor PRIVATE ${SOURCE_FILES})

target_link_libraries(Editor PRIVATE Engine)
target_link_options(Editor PRIVATE "/base:0x10200000")
target_compile_definitions(Editor PRIVATE UNICODE _UNICODE "EDITOR_API=__declspec(dllexport)")

target_include_directories(Editor PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Window/Inc
    ${CMAKE_SOURCE_DIR}/Editor/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Src)
