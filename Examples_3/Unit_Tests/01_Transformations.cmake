project(01_Transformations)

set(TRANFROMATIONS_FILES
    ../../../The-Forge/Examples_3/Unit_Tests/src/01_Transformations/01_Transformations.cpp
)

if(${APPLE_PLATFORM} MATCHES ON)
    set(TRANFROMATIONS_FILES
        ${TRANFROMATIONS_FILES}
        ../../../The-Forge/Common_3/OS/Darwin/macOSAppDelegate.h
        ../../../The-Forge/Common_3/OS/Darwin/macOSAppDelegate.m
    )
endif()

if(${APPLE_PLATFORM} MATCHES ON)
    add_executable(01_Transformations MACOSX_BUNDLE ${TRANFROMATIONS_FILES})
else()
    add_executable(01_Transformations ${TRANSFORMATIONS_FILES})
endif()

target_link_libraries(01_Transformations The-Forge)

set_property(TARGET 01_Transformations PROPERTY CXX_STANDARD 17)
