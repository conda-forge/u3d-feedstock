set BUILD_CONFIG=Release

cd u3d

mkdir build
cd build

cmake .. -G "NMake Makefiles" ^
    -Wno-dev ^
    -DCMAKE_BUILD_TYPE=%BUILD_CONFIG% ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DU3D_SHARED:BOOL=TRUE
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
