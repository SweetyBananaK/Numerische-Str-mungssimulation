# Install script for directory: D:/numerische-str-templates-master/src/spider_src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/numerische-str-templates-master")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "D:/CLion 2022.3.1/bin/mingw/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/numerische-str-templates-master/bin/Spider.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/numerische-str-templates-master/bin" TYPE EXECUTABLE FILES "D:/numerische-str-templates-master/run/Spider.exe")
  if(EXISTS "$ENV{DESTDIR}/D:/numerische-str-templates-master/bin/Spider.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/D:/numerische-str-templates-master/bin/Spider.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/CLion 2022.3.1/bin/mingw/bin/strip.exe" "$ENV{DESTDIR}/D:/numerische-str-templates-master/bin/Spider.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/numerische-str-templates-master/run/Spider.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "D:/numerische-str-templates-master/run" TYPE EXECUTABLE FILES "D:/numerische-str-templates-master/run/Spider.exe")
  if(EXISTS "$ENV{DESTDIR}/D:/numerische-str-templates-master/run/Spider.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/D:/numerische-str-templates-master/run/Spider.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/CLion 2022.3.1/bin/mingw/bin/strip.exe" "$ENV{DESTDIR}/D:/numerische-str-templates-master/run/Spider.exe")
    endif()
  endif()
endif()

