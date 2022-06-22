# Install script for directory: /home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/bootloader" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/bootloader/bootloader.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/bootloader" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/bootloader/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/bootloader" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/bootloader/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/bootloader" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/bootloader/test.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/displaymanager" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/displaymanager/displaymanager.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/displaymanager" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/displaymanager/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/displaymanager" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/displaymanager/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/dracut" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dracut/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/dracut" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dracut/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/dummyprocess" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dummyprocess/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/dummypython" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dummypython/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/dummypython" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dummypython/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/fstab" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fstab/fstab.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/fstab" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fstab/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/fstab" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fstab/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/fstab" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fstab/test.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/fstab" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fstab/test2.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/grubcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/grubcfg/grubcfg.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/grubcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/grubcfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/grubcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/grubcfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/hwclock" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/hwclock/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/hwclock" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/hwclock/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initcpiocfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initcpiocfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initcpiocfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initcpiocfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initramfscfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initramfscfg/encrypt_hook")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initramfscfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initramfscfg/encrypt_hook_nokey")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initramfscfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initramfscfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/initramfscfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initramfscfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/localecfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/localecfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/localecfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/localecfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/mkinitfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/mkinitfs/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/mkinitfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/mkinitfs/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/mount" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/mount/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/mount" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/mount/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/mount" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/mount/mount.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/networkcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/networkcfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/networkcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/networkcfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/openrcdmcryptcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/openrcdmcryptcfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/openrcdmcryptcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/openrcdmcryptcfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/packages" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/packages/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/packages" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/packages/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/packages" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/packages/packages.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/plymouthcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/plymouthcfg/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/plymouthcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/plymouthcfg/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/plymouthcfg" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/plymouthcfg/plymouthcfg.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/rawfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/rawfs/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/rawfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/rawfs/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/services-openrc" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/services-openrc/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/services-openrc" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/services-openrc/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/services-systemd" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/services-systemd/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/services-systemd" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/services-systemd/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/services-systemd" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/services-systemd/services-systemd.schema.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/unpackfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/unpackfs/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/unpackfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/unpackfs/module.desc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/unpackfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/unpackfs/runtests.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/calamares/modules/unpackfs" TYPE FILE FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/unpackfs/unpackfs.schema.yaml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/contextualprocess/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dracutlukscfg/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/dummycpp/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/finished/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/finishedq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/fsresizer/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/hostinfo/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initcpio/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/initramfs/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/interactiveterminal/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/keyboard/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/keyboardq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/license/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/locale/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/localeq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/luksbootkeyfile/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/luksopenswaphookcfg/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/machineid/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/netinstall/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/notesqml/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/oemid/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/packagechooser/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/packagechooserq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/partition/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/plasmalnf/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/preservefiles/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/removeuser/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/shellprocess/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/summary/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/summaryq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/tracking/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/umount/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/users/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/usersq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/webview/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/welcome/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/welcomeq/cmake_install.cmake")
  include("/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/modules/zfs/cmake_install.cmake")

endif()

