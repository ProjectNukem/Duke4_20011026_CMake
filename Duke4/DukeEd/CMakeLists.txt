project(DukeEd)
add_executable(DukeEd WIN32)

set(SOURCE_FILES
    Src/Res/DukeEd.rc
    Src/Main.cpp)

source_group("Src" FILES ${SOURCE_FILES})
target_sources(DukeEd PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Inc/BottomBar.h
    Inc/Browser.h
    Inc/BrowserActor.h
    Inc/BrowserGroup.h
    Inc/BrowserMaster.h
    Inc/BrowserMesh.h
    Inc/BrowserMusic.h
    Inc/BrowserSound.h
    Inc/BrowserTexture.h
    Inc/BuildPropSheet.h
    Inc/ButtonBar.h
    Inc/CodeFrame.h
    Inc/DlgAddSpecial.h
    Inc/DlgBevel.h
    Inc/DlgBrushBuilder.h
    Inc/DlgBrushImport.h
    Inc/DlgBuildOptions.h
    Inc/DlgDepth.h
    Inc/DlgGeneric.h
    Inc/DlgMapError.h
    Inc/DlgMapImport.h
    Inc/DlgProgress.h
    Inc/DlgRename.h
    Inc/DlgScaleLights.h
    Inc/DlgSearchActors.h
    Inc/DlgTexProp.h
    Inc/DlgTexReplace.h
    Inc/DlgTexUsage.h
    Inc/DlgViewportConfig.h
    Inc/Extern.h
    Inc/MRUList.h
    Src/Res/resource.h
    Inc/SurfacePropSheet.h
    Inc/TerrainEditSheet.h
    Inc/TopBar.h
    Inc/TwoDeeShapeEditor.h
    Inc/ViewportFrame.h)

source_group("Inc" FILES ${SOURCE_FILES})
target_sources(DukeEd PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Src/Res/bb_grid1.bmp
    Src/Res/bb_lock1.bmp
    Src/Res/bb_log_w.bmp
    Src/Res/bb_rotat.bmp
    Src/Res/bb_vtx_s.bmp
    Src/Res/bb_zoomc.bmp
    Src/Res/bmp00001.bmp
    Src/Res/bmp00002.bmp
    Src/Res/bmp00003.bmp
    Src/Res/bmp00004.bmp
    Src/Res/bmp00005.bmp
    Src/Res/bmp00006.bmp
    Src/Res/bmp00007.bmp
    Src/Res/bmp00008.bmp
    Src/Res/bmp00009.bmp
    Src/Res/bmp00010.bmp
    Src/Res/bmp00011.bmp
    Src/Res/bmp00012.bmp
    Src/Res/bmp00013.bmp
    Src/Res/bmp00014.bmp
    Src/Res/bmp00015.bmp
    Src/Res/bmp00016.bmp
    Src/Res/bmp00017.bmp
    Src/Res/bmp00018.bmp
    Src/Res/bmp00019.bmp
    Src/Res/bmp00020.bmp
    Src/Res/bmp00021.bmp
    #Src/Res/bmp00022.bmp
    #Src/Res/bmp00023.bmp
    #Src/Res/bmp00024.bmp
    Src/Res/bmp00025.bmp
    Src/Res/bmp00026.bmp
    Src/Res/bmp00027.bmp
    Src/Res/bmp00028.bmp
    Src/Res/browsers.bmp
    Src/Res/browsert.bmp
    Src/Res/cf_toolb.bmp
    Src/Res/Duke.ico
    #Src/Res/Icon.bmp
    #Src/Res/icon1.ico
    Src/Res/idbm_2ds.bmp
    #Src/Res/idbm_add.bmp
    Src/Res/idbm_bui.bmp
    Src/Res/idbm_buildall.bmp
    Src/Res/idbm_cam.bmp
    #Src/Res/idbm_che.bmp
    #Src/Res/idbm_del.bmp
    Src/Res/idbm_dow.bmp
    Src/Res/idbm_edi.bmp
    Src/Res/idbm_fil.bmp
    #Src/Res/idbm_map.bmp
    Src/Res/idbm_mes.bmp
    Src/Res/idbm_mus.bmp
    #Src/Res/idbm_new.bmp
    Src/Res/idbm_pla.bmp
    Src/Res/idbm_sur.bmp
    Src/Res/idbm_tex.bmp
    Src/Res/idbm_unr.bmp
    Src/Res/idbm_vie.bmp
    #Src/Res/Logo.bmp
    #Src/Res/Toolbar.bmp
    Src/Res/toolbar1.bmp
    #Src/Res/Unreal.ico
    #Src/Res/UnrealEd.ico
    )

source_group("Res" FILES ${SOURCE_FILES})
target_sources(DukeEd PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Inc/Bugslayer/BugslayerUtil.h
    Inc/Bugslayer/CrashHandler.h
    Inc/Bugslayer/CriticalSection.h
    Inc/Bugslayer/DiagAssert.h
    Inc/Bugslayer/MemDumperValidator.h
    Inc/Bugslayer/MemStress.h
    Inc/Bugslayer/MSJDBG.h
    Inc/Bugslayer/PSAPI.H
    Inc/Bugslayer/SymbolEngine.h
    Inc/Bugslayer/WarningsOff.h
    Inc/Bugslayer/WarningsOn.h)

source_group("Bugslayer" FILES ${SOURCE_FILES})
target_sources(DukeEd PRIVATE ${SOURCE_FILES})

target_link_directories(DukeEd PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(DukeEd PRIVATE Engine Editor Cannibal BugslayerUtil comctl32 winmm)
target_link_options(DukeEd PRIVATE "/base:0x10E00000")
target_compile_definitions(DukeEd PRIVATE UNICODE _UNICODE)

target_include_directories(DukeEd PRIVATE
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Window/Inc
    ${CMAKE_SOURCE_DIR}/Editor/Inc
    ${CMAKE_SOURCE_DIR}/DukeEd/Inc
    ${CMAKE_SOURCE_DIR}/DukeEd/Inc/Bugslayer
    ${CMAKE_SOURCE_DIR}/Engine/Src)
