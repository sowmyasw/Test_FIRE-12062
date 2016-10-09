
REM Clean-up the dfbuild output directory, if exists.
rmdir C:\opt\dfinstaller\dfiout /S /Q
rmdir C:\opt\dfinstaller\sources\QAProduct\dev\src\out /S /Q
 
java -jar C:\opt\dfinstaller\sources\QAProduct\dev\scripts\tl_build\dfbuild.jar --outdir C:\opt\dfinstaller\dfiout --exec C:\opt\dfinstaller\sources\QAProduct\dev\scripts\tl_build\build_2.bat

