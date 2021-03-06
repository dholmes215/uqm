# Configure CMake to use the vcpkg CMake toolchain file, found in the vcpkg submodule
function(configure_vcpkg VCPKG_TOOLCHAIN_FILE)
    if(NOT EXISTS ${VCPKG_TOOLCHAIN_FILE})
        message(WARNING "The vcpkg submodule was not found! If using a vcpkg submodule, check that submodule is initialized and updated and try again.")
    else()
        if(DEFINED CMAKE_TOOLCHAIN_FILE)
            set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE ${CMAKE_TOOLCHAIN_FILE} PARENT_SCOPE)
        endif()
        set(CMAKE_TOOLCHAIN_FILE ${VCPKG_TOOLCHAIN_FILE} PARENT_SCOPE)
    endif()
endfunction()
