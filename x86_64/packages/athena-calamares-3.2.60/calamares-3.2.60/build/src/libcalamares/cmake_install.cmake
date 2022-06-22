# Install script for directory: /home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/libcalamares.so.3.2.60")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60"
         OLD_RPATH "/usr/lib/libpython3.10.so:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.2.60")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/libcalamares.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so"
         OLD_RPATH "/usr/lib/libpython3.10.so:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  
    file( MAKE_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )
    execute_process( COMMAND "/usr/bin/cmake" -E create_symlink ../libcalamares.so.3.2.60 libcalamares.so WORKING_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )

endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/libcalamares/CalamaresConfig.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/build/src/libcalamares/CalamaresVersion.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/CalamaresAbout.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/CppJob.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/DllMacro.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/GlobalStorage.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/Job.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/JobExample.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/JobQueue.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/ProcessJob.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/PythonHelper.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/PythonJob.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/PythonJobApi.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/Settings.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/geoip" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/GeoIPFixed.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/GeoIPJSON.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/GeoIPTests.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/GeoIPXML.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/Handler.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/geoip/Interface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/locale" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/Global.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/Lookup.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/TimeZone.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/TranslatableConfiguration.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/TranslatableString.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/Translation.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/locale/TranslationsModel.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/modulesystem" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Actions.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Config.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Descriptor.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/InstanceKey.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Module.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Preset.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/Requirement.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/RequirementsChecker.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/modulesystem/RequirementsModel.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/network" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/network/Manager.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/network/Tests.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/partition" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/AutoMount.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/FileSystem.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/Global.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/KPMHelper.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/KPMManager.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/Mount.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/PartitionIterator.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/PartitionQuery.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/PartitionSize.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/partition/Sync.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCALAMARESx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/utils" TYPE FILE FILES
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/BoostPython.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/CalamaresUtilsSystem.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/CommandList.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Dirs.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Entropy.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Logger.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/NamedEnum.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/NamedSuffix.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Permissions.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/PluginFactory.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/RAII.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Retranslator.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Runner.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/String.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Traits.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/UMask.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Units.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Variant.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/Yaml.h"
    "/home/athena/athena-repository/x86_64/packages/athena-calamares-3.2.60/calamares-3.2.60/src/libcalamares/utils/moc-warnings.h"
    )
endif()

