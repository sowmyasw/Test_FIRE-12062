

REM type cd [basefolder]/sources
REM type "ant" in the command prompt
REM build output folder : sources\bin

SET PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_40\bin;

cd %BASE_DIR%\sources\blahblahblah\dev\src

echo "Changed directory to sources"

call ant %DF_ANT_BUILD_STATS_OPTS% all -debug || echo "Error: Build failed" && exit /b 1; 

mkdir $BASE_DIR\output

mkdir $BASE_DIR\output\installers

echo "Ant completed successfully"

cd %BASE_DIR%\sources\QAProduct\
call "C:\Program Files\7-Zip\7z.exe" a -r -tzip %BASE_DIR%\output\installers\QAPinstaller.zip *


mkdir %BASE_DIR%\output\binaries
cd %BASE_DIR%\sources\QAProduct\dev\src\bin
xcopy %BASE_DIR%\sources\QAProduct\dev\src\bin %BASE_DIR%\output\binaries /s /e

REM -------------------------------------For UT----------------------------------------------
jar cf QAProduct.jar .\*
xcopy %BASE_DIR%\sources\QAProduct\dev\src\bin\QAProduct.jar %BASE_DIR%\sources\QAProduct\nonuitest\JUnit\Testing_Framework\extras\lib 
xcopy %BASE_DIR%\sources\QAProduct\dev\src\bin\QAProduct.jar %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib 

mkdir %BASE_DIR%\output\libraries
xcopy %BASE_DIR%\sources\QAProduct\dev\src\lib %BASE_DIR%\output\libraries /s /e

mkdir %BASE_DIR%\output\sources
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src %BASE_DIR%\output\sources /s /e
REM xcopy %BASE_DIR%\sources\python_module %BASE_DIR%\output\sources /s /e

mkdir %BASE_DIR%\output\unittests
REM xcopy %BASE_DIR%\sources\QAProduct\dev\src\bin\com\devfactory\qa\sample\test\UT_Basic.class %BASE_DIR%\output\unittests /s /e

exit /b 0;
