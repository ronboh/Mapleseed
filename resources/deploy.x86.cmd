SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC

MKDIR x86

copy ..\bin\x86\release\MapleSeed.exe x86\MapleSeed.exe
::copy ..\bin\x86\release\MapleSeed.pdb x86\MapleSeed.pdb

D:\Projects\Libraries\Qt\5.12.5\msvc2017\bin\windeployqt --no-translations --no-opengl-sw --no-angle --plugindir x86\plugins x86\MapleSeed.exe