:֧�����ĵı�����ANSI���룬���ļ�תΪANSI����

set PATH=D:\agui\ndk\android-ndk-r9;%PATH%
cd jni
call ../ndkbuild.bat
cd ../
mkdir curl
mkdir curl\libs
mkdir curl\include
xcopy libs curl\libs\ /s /h /d /y /f /r /i /c
xcopy ..\src\include\curl\*.h curl\include\ /s /h /d /y /f /r /i /c
call ѹ��.bat
pause