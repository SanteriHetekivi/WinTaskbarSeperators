@echo off

REM Set path to project root directory.
REM %~dp0 retuns this script's directory path.
SET PATH_DIR_PROJECT_ROOT=%~dp0/../

REM Build do nothing exe.
g++.exe ^
    -Os ^
    -s ^
    %PATH_DIR_PROJECT_ROOT%src/do_nothing.cpp ^
    -o %PATH_DIR_PROJECT_ROOT%/program/do_nothing.exe