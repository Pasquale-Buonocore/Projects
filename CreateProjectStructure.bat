@echo off

REM DEFINE USEFUL INTERNAL VARIABLES
set RUNNER_PATH="%cd%"
set MATLAB_PATH=%RUNNER_PATH%\MatlabSimulink
set PYTHON_PATH=%RUNNER_PATH%\Python
set C_PATH=%RUNNER_PATH%\C
set CPP_PATH=%RUNNER_PATH%\Cpp

REM START SCRIPT LOGIC
echo This script helps you creating your new project folder structure!

REM CHECK IF THE USER INSERTED A CORRECT VALUE
:choose_project
    REM DEFINE INPUT FROM USER
    set /p "PROJECT= Which project do you want to initialize? Possible solution are C(0) C++(1) Python(2) Matlab(3):   "
    if %PROJECT% lss 4 goto :if_true else goto :if_false

REM CONDITION ONE THE USER CHOOSE THE PROJECT
:if_true
    echo Awesome! Let's define it.
    set /p "PROJECT_NAME=How do you want to name the project?: "

    REM START CREATING THE PROJECT FOLDER STRUCTURE
    if %PROJECT%==0 goto :if_C
    if %PROJECT%==1 goto :if_Cpp
    if %PROJECT%==2 goto :if_Python
    if %PROJECT%==3 goto :if_Matlab
    exit
  
:if_false
    echo Unfortunately it is not possible to initilize the %PROJECT% project you required.
    set /p "continue=Do you still want to continue with one of the possible project? YES(Y)/NO(N)"
    if %continue%==Y goto :choose_project else exit 0

:if_C
    echo CREATING src FOLDER...
    mkdir "%C_PATH%\%PROJECT_NAME%\src"
    echo CREATING lib FOLDER...
    mkdir "%C_PATH%\%PROJECT_NAME%\lib"
    echo CREATING doc FOLDER...
    mkdir "%C_PATH%\%PROJECT_NAME%\doc"
    echo CREATING main FILE...
    @echo #This file contains the C main function. > "%C_PATH%\%PROJECT_NAME%\src\main.c"
    @echo #This file contains the C main header. > "%C_PATH%\%PROJECT_NAME%\src\main.h"
    @echo Please consider fill the document in. > "%C_PATH%\%PROJECT_NAME%\ReadMe.txt"
    exit

:if_Cpp
    echo CREATING src FOLDER...
    mkdir "%CPP_PATH%\%PROJECT_NAME%\src"
    echo CREATING lib FOLDER...
    mkdir "%CPP_PATH%\%PROJECT_NAME%\lib"
    echo CREATING doc FOLDER...
    mkdir "%CPP_PATH%\%PROJECT_NAME%\doc"
    echo CREATING main FILE...
    @echo #This file contains the CPP main function. > "%CPP_PATH%\%PROJECT_NAME%\src\main.c"
    @echo #This file contains the CPP main header. > "%CPP_PATH%\%PROJECT_NAME%\src\main.h"
    @echo Please consider fill the document in. > "%CPP_PATH%\%PROJECT_NAME%\ReadMe.txt"
    exit 

:if_Python
    echo CREATING src FOLDER...
    mkdir "%PYTHON_PATH%\%PROJECT_NAME%\src"
    echo CREATING lib FOLDER...
    mkdir "%PYTHON_PATH%\%PROJECT_NAME%\lib"
    echo CREATING doc FOLDER...
    mkdir "%PYTHON_PATH%\%PROJECT_NAME%\doc"
    echo CREATING main FILE...
    @echo #This file contains the Python main function. > "%PYTHON_PATH%\%PROJECT_NAME%\src\main.py"
    @echo Please consider fill the document in. > "%PYTHON_PATH%\%PROJECT_NAME%\ReadMe.txt"
    exit

:if_Matlab
    echo CREATING src FOLDER...
    mkdir "%MATLAB_PATH%\%PROJECT_NAME%\src"
    echo CREATING lib FOLDER...
    mkdir "%MATLAB_PATH%\%PROJECT_NAME%\lib"
    echo CREATING doc FOLDER...
    mkdir "%MATLAB_PATH%\%PROJECT_NAME%\doc"
    echo CREATING main FILE...
    @echo /This file contains the matlab main function. > "%MATLAB_PATH%\%PROJECT_NAME%\src\main.m"
    @echo Please consider fill the document in. > "%MATLAB_PATH%\%PROJECT_NAME%\ReadMe.txt"
    exit