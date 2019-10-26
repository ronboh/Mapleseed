SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC

MKDIR x64

copy release\MapleSeed.exe x64\MapleSeed.exe
::copy release\MapleSeed.pdb x64\MapleSeed.pdb

C:\Qt\5.12\msvc2017_64\bin\windeployqt --no-translations --no-opengl-sw -no-angle --plugindir x64\plugins x64\MapleSeed.exe