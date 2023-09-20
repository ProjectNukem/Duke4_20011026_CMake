project(Engine)
add_library(Engine SHARED)

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/Core/Src/DnExec.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/mail.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UExporter.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UFactory.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnAnsi.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnBits.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnCache.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnClass.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnCoreNet.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnCorSc.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnLinker.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnMath.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnMem.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnMisc.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnName.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnObj.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnProp.cpp
    ${CMAKE_SOURCE_DIR}/Core/Src/UnVcWin32.cpp)

source_group("Core Src" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/Core/Inc/Core.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/DnExec.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FCodec.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FConfigCacheIni.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFeedbackContextAnsi.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFeedbackContextWindows.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFileManagerAnsi.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFileManagerGeneric.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFileManagerLinux.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FFileManagerWindows.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FMallocAnsi.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FMallocDebug.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FMallocWindows.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FOutputDeviceAnsiError.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FOutputDeviceFile.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FOutputDeviceNull.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FOutputDeviceStdout.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FOutputDeviceWindowsError.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/FRiffChunk.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/mail.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UExporter.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UFactory.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnArc.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnBits.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnBuild.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnCache.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnCId.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnClass.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnCoreNet.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnCorObj.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnFile.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnGnuG.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnLinker.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnMath.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnMem.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnMsg.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnName.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnNames.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnObjBas.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnObjVer.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnScript.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnStack.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnTemplate.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnType.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnUnix.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnVcWin32.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/UnVcWn32SSE.h
    ${CMAKE_SOURCE_DIR}/Core/Inc/xtypes.h)

source_group("Core Inc" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ABeamSystem.cpp
    ABreakableGlass.cpp
    ADukeNet.cpp
    AFocalPoint.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/Amd3d.h
    ASoftParticleSystem.cpp
    BoneWarp.cpp
    DnCinematic.cpp
    dnclient.c
    DnMesh.cpp
    dnParentalLock.cpp
    dnPlayerProfile.cpp
    dnSaveLoad.cpp
    dnScreenshot.cpp
    DnTextureCanvas.cpp
    Engine.cpp
    EnginePrivate.h
    ../Inc/Flic.h
    network.c
    palette.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/Render.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/RenderPrivate.h
    Rope.cpp
    ULodMesh.cpp
    UnActCol.cpp
    UnActor.cpp
    UnAudio.cpp
    UnCamera.cpp
    UnCamMgr.cpp
    UnCanvas.cpp
    UnCon.cpp
    UnDynBsp.cpp
    UnEngine.cpp
    UnFont.cpp
    UnFPoly.cpp
    UnGame.cpp
    UnIn.cpp
    UnLevAct.cpp
    UnLevel.cpp
    UnLevTic.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnLight.cpp
    UnMain.cpp
    UnMesh.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnMeshRn.cpp
    UnModel.cpp
    UnMover.cpp
    UnObjEngine.cpp
    UnParams.cpp
    UnPath.cpp
    UnPath.h
    UnPawn.cpp
    UnPhysic.cpp
    UnPlayer.cpp
    UnPrim.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnRandom.cpp
    UnReach.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnRender.cpp
    UnRenderIterator.cpp
    UnRoute.cpp
    UnScript.cpp
    UnScrTex.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnSoftLn.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnSpan.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnSpan.h
    ${CMAKE_SOURCE_DIR}/Render/Src/UnSprite.cpp
    ${CMAKE_SOURCE_DIR}/Render/Src/UnTest.cpp
    UnTex.cpp
    UnTrace.cpp
    UnURL.cpp)

source_group("Engine Src" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ../Inc/AActor.h
    ../Inc/ABeamSystem.h
    ../Inc/ABoneRope.h
    ../Inc/ABrush.h
    ../Inc/ACamera.h
    ../Inc/ACarcass.h
    ../Inc/ADoorMover.h
    ../Inc/ADukeNet.h
    ../Inc/AFocalPoint.h
    ../Inc/AGameReplicationInfo.h
    ../Inc/AInventory.h
    Amd3d.h
    ../Inc/AMover.h
    ../Inc/APawn.h
    ../Inc/APlayerPawn.h
    ../Inc/APlayerReplicationInfo.h
    ../Inc/ARenderActor.h
    ../Inc/ASoftParticleSystem.h
    ../Inc/AZoneInfo.h
    ../Inc/DnCinematic.h
    ../Inc/dnclient.h
    ../Inc/DnMesh.h
    ../Inc/DnMeshPrivate.h
    ../Inc/DnTextureCanvas.h
    ../Inc/Engine.h
    ../Inc/EngineClasses.h
    flic.cpp
    ../Inc/MeshBase.h
    ../Inc/network.h
    ../Inc/Palette.h
    res/resource.h
    ../Inc/Rope.h
    ../Inc/S3tc.h
    ../Inc/ULevelSummary.h
    ../Inc/UnActor.h
    ../Inc/UnAudio.h
    ../Inc/UnCamera.h
    ../Inc/UnCon.h
    ../Inc/UnDDraw.h
    ../Inc/UnDynBsp.h
    ../Inc/UnEngine.h
    ../Inc/UnEngineGnuG.h
    ../Inc/UnEngineWin.h
    ../Inc/UnGame.h
    ../Inc/UnIn.h
    ../Inc/UnLevel.h
    ../Inc/UnMesh.h
    ../Inc/UnMeshPrivate.h
    ../Inc/UnModel.h
    ../Inc/UnNetStuff.h
    ../Inc/UnObj.h
    ../Inc/UnPlayer.h
    ../Inc/UnPrim.h
    ../Inc/UnReach.h
    ../Inc/UnRender.h
    ../Inc/UnRenderIterator.h
    ../Inc/UnRenDev.h
    ../Inc/UnScrTex.h
    ../Inc/UnTex.h
    ../Inc/UnURL.h)

source_group("Engine Inc" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "../Classes/*.uc")
source_group("Engine Classes" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    UnBunch.cpp
    ../Inc/UnBunch.h
    UnChan.cpp
    ../Inc/UnChan.h
    UnConn.cpp
    ../Inc/UnConn.h
    UnDemoPenLev.cpp
    ../Inc/UnDemoPenLev.h
    UnDemoRec.cpp
    ../Inc/UnDemoRec.h
    ../Inc/UnNet.h
    UnNetDrv.cpp
    ../Inc/UnNetDrv.h
    UnPenLev.cpp
    ../Inc/UnPenLev.h)

source_group("Net" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ../Inc/BINK.H
    ../Lib/binkw32.lib)

source_group("Bink" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ../Inc/rad.h
    ../Inc/smack.h
    ../Lib/smackw32.lib)

source_group("Smacker" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    Buildnum.h
    Spchtel.h
    Spchwrap.h
    Speech.h
    ../Lib/Spchwrap.lib)

source_group("SapiSDK" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/System/Engine.int)

source_group("Int" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/Window/Src/Window.cpp)

source_group("Window Src" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/Window/Inc/Window.h)

source_group("Window Inc" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/WinDrv/Src/WinClient.cpp
    ${CMAKE_SOURCE_DIR}/WinDrv/Src/WinDrv.cpp
    ${CMAKE_SOURCE_DIR}/WinDrv/Src/WinViewport.cpp)

source_group("WinDrv Src" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/WinDrv/inc/WinDrv.h)

source_group("WinDrv Inc" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/InternetLink.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/TcpLink.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/TcpNetDriver.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/UdpLink.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/UMasterServerCommandlet.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/UnSocket.cpp
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/UnSocket.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Src/UUpdateServerCommandlet.cpp)

source_group("IpDrv Src" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/AInternetLink.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/ATcpLink.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/AUdpLink.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/GameSpyClasses.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/GameSpyClassesPublic.h
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc/IpDrvClasses.h)

source_group("IpDrv Inc" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/IpDrv/Classes/*.uc")
source_group("IPDrv Classes" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

file(GLOB SOURCE_FILES CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/IpServer/Classes/*.uc")
source_group("IPServer Classes" FILES ${SOURCE_FILES})
target_sources(Engine PRIVATE ${SOURCE_FILES})

target_sources(Engine PRIVATE res/EngineRes.rc)
target_link_libraries(Engine PRIVATE xcore spchwrap s3tc comctl32 dinput8 winmm Cannibal)
target_link_options(Engine PRIVATE "/base:0x10300000" "/nodefaultlib:LIBC")
target_link_directories(Engine PRIVATE ../Lib)

target_include_directories(Engine PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/xcore
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Engine/Inc
    ${CMAKE_SOURCE_DIR}/Render/Inc
    ${CMAKE_SOURCE_DIR}/WinDrv/Inc
    ${CMAKE_SOURCE_DIR}/Window/Inc
    ${CMAKE_SOURCE_DIR}/IpDrv/Inc
    ${CMAKE_SOURCE_DIR}/IpDrv/Src)

target_compile_definitions(Engine PRIVATE
    UNICODE
    _UNICODE
    "CORE_API=__declspec(dllexport)"
    "ENGINE_API=__declspec(dllexport)"
    "WINDOW_API=__declspec(dllexport)"
    "WINDRV_API=__declspec(dllexport)"
    "IPDRV_API=__declspec(dllexport)")
