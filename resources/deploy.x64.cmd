SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC

MKDIR x64

copy ..\bin\x64\release\MapleSeed.exe x64\MapleSeed.exe
::copy ..\bin\x64\release\MapleSeed.pdb x64\MapleSeed.pdb

D:\Projects\Libraries\Qt\5.12.5\msvc2017_64\bin\windeployqt --no-translations --no-opengl-sw -no-angle --plugindir x64\plugins x64\MapleSeed.exe