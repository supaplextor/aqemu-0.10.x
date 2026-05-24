# Install script for directory: /home/runner/work/aqemu/aqemu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/runner/work/aqemu/aqemu/build-check/aqemu")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/aqemu")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/runner/work/aqemu/aqemu/build-check/CMakeFiles/aqemu.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aqemu/os_icons" TYPE FILE FILES
    "/home/runner/work/aqemu/aqemu/resources/os_icons/alpine.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/alt.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/aptosid.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/arch.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/asp.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/bodhi.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/calculate.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/centos.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/chakra.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/clearos.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/damnsmalllinux.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/debian.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/dragonfly.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/fedora.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/freebsd.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/frugalware.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/fuduntu.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/gentoo.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/gnewsense.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/knoppix.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/knoppix_v2.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/kubuntu.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/kubuntu_v2.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/lubuntu.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/lunar.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/mac.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/mageia.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/mandriva.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/mepis.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/minix.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/mint.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/netbsd.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/novell.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/openbsd.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/opensolaris.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/pclinuxos.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/puppy.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/redhat.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/sabayon.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/scientific.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/slackware.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/slackware_v2.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/solaris.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/suse-novell.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/suse.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/symphony.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/ubuntu.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/ubuntu_v2.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/vector.png"
    "/home/runner/work/aqemu/aqemu/resources/os_icons/xubuntu.png"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aqemu/os_templates" TYPE FILE FILES
    "/home/runner/work/aqemu/aqemu/resources/os_templates/FreeBSD 4.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/FreeBSD 7.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/FreeBSD 8.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Linux 2.0.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Linux 2.4.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Linux 2.6 x86_64.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Linux 2.6.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/MacOS X x86.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows 2000.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows 7 x64.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows 7.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows 9X.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows Vista x64.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows Vista.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows XP x64.aqvmt"
    "/home/runner/work/aqemu/aqemu/resources/os_templates/Windows XP.aqvmt"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aqemu/docs" TYPE FILE FILES "/home/runner/work/aqemu/aqemu/resources/docs/links.html")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pixmaps" TYPE FILE FILES
    "/home/runner/work/aqemu/aqemu/resources/menu_data/aqemu.png"
    "/home/runner/work/aqemu/aqemu/resources/menu_data/aqemu_48x48.png"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/runner/work/aqemu/aqemu/resources/menu_data/aqemu.desktop")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/appdata" TYPE FILE FILES "/home/runner/work/aqemu/aqemu/resources/menu_data/aqemu.appdata.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/aqemu" TYPE FILE FILES
    "/home/runner/work/aqemu/aqemu/AUTHORS.bz2"
    "/home/runner/work/aqemu/aqemu/CHANGELOG.bz2"
    "/home/runner/work/aqemu/aqemu/README.bz2"
    "/home/runner/work/aqemu/aqemu/TODO.bz2"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/runner/work/aqemu/aqemu/build-check/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/runner/work/aqemu/aqemu/build-check/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
