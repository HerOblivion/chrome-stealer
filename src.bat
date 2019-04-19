@echo off
title Chrome Password Recovery by Her [v0.2]
:top
color c
echo Chrome Password Recovery Software by Her
echo It is recommended that you run in administator mode!
echo ----------------------------------------
set /p drive=Name of drive: 
set /p set=Would you like to check for a second database? [y/n]: 
if '%set%'=='y' goto :sec
set /p out=Output Location? [y/n]: 
if '%out%'=='y' goto :top1
set /p=Press any key to dump passwords...
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" C:\Users\%username%\Desktop
echo Copied to Desktop!
set /p=Press any key to exit...
exit
:top1
set /p output=Output Location: 
set /p=Press any key to dump passwords...
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" %output%
echo Copied to Desktop!
set /p=Press any key to exit...
exit
:sec
set /p out=Output Location? [y/n]: 
if '%out%'=='y' goto :sec1
set /p=Press any key to dump passwords...
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" C:\Users\%username%\Desktop
xcopy "Login Data2" C:\Users\%username%\Desktop
echo Copied to Desktop!
set /p=Press any key to exit...
exit
:sec1
set /p output=Output Location: 
set /p=Press any key to dump passwords...
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" %output%
xcopy "Login Data2" %output%
echo Copied to %output%
set /p=Press any key to exit...
