@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
if errorlevel 1 exit /b 1
cd /d "%~dp0"
"C:\Users\Jonat\AppData\Roaming\Python\Python314\Scripts\scons.exe" platform=windows target=editor arch=x86_64
exit /b %errorlevel%
