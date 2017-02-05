:支持中文的编码是ANSI编码，将文件转为ANSI编码

set PATH=D:\agui\ndk\android-ndk-r9;%PATH%
cd jni
call ../ndkbuild.bat
cd ../
mkdir curl
mkdir curl\libs
mkdir curl\include
xcopy libs curl\libs\ /s /h /d /y /f /r /i /c
xcopy ..\src\include\curl\*.h curl\include\ /s /h /d /y /f /r /i /c
call 压缩.bat
pause