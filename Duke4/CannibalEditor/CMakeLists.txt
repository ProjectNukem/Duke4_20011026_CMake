#add_subdirectory(vidd3d)
#add_subdirectory(vidglide)

project(CannibalEditor)
add_executable(CannibalEditor WIN32)

set(SOURCE_FILES
    cam_man.cpp
    con_man.cpp
    file_imp.cpp
    in_main.cpp
    in_win.cpp
    math_vec.cpp
    mdx_man.cpp
    ovl_man.cpp
    sys_main.cpp
    sys_win.cpp
    vcr_man.cpp
    vid_main.cpp)

source_group("Source Files" FILES ${SOURCE_FILES})
target_sources(CannibalEditor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ovl_cc.cpp
    ovl_defs.cpp
    ovl_frm.cpp
    ovl_mdl.cpp
    ovl_seq.cpp
    ovl_skin.cpp
    ovl_work.cpp)

source_group("Overlays" FILES ${SOURCE_FILES})
target_sources(CannibalEditor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    cam_man.h
    cbl_defs.h
    con_man.h
    file_imp.h
    in_main.h
    in_win.h
    math_vec.h
    mdx_man.h
    ovl_man.h
    resource.h
    sys_main.h
    sys_win.h
    vcr_man.h
    vid_main.h)

source_group("Header Files" FILES ${SOURCE_FILES})
target_sources(CannibalEditor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    ovl_cc.h
    ovl_defs.h
    ovl_frm.h
    ovl_mdl.h
    ovl_seq.h
    ovl_skin.h
    ovl_work.h)

source_group("Overlay Headers" FILES ${SOURCE_FILES})
target_sources(CannibalEditor PRIVATE ${SOURCE_FILES})

set(SOURCE_FILES
    cannibal.ico
    CannibalEditor.rc)

source_group("Resource Files" FILES ${SOURCE_FILES})
target_sources(CannibalEditor PRIVATE ${SOURCE_FILES})

target_include_directories(CannibalEditor PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/xcore)

target_compile_definitions(CannibalEditor PRIVATE CANNIBAL_TOOL XCORE_PURE)
target_link_libraries(CannibalEditor PRIVATE xcore comctl32 dinput8 dxguid winmm)
