SET PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_40\bin;

cd %BASE_DIR%\sources\QAProduct\dev\src

echo "Changed directory to sources"

call ant %DF_ANT_BUILD_STATS_OPTS% all -debug || echo "Error: Build failed" && exit /b 1; 

REM The compiled class files are available under dev\src\out directory afte ant successfully executes

mkdir $BASE_DIR\output

mkdir $BASE_DIR\output\installers

echo "Ant completed successfully"

cd %BASE_DIR%\sources\QAProduct\
call "C:\Program Files\7-Zip\7z.exe" a -r -tzip %BASE_DIR%\output\installers\QAPinstaller.zip *


mkdir %BASE_DIR%\output\binaries
cd %BASE_DIR%\sources\QAProduct\dev\src\out
jar cvf QAProduct1.jar ./com/devfactory/qa/sample/HelloWorld.class

xcopy %BASE_DIR%\sources\QAProduct\dev\src\out %BASE_DIR%\output\binaries /s /e

REM -------------------------------------For UT----------------------------------------------
REM jar cf QAProduct.jar .\*
xcopy %BASE_DIR%\sources\QAProduct\dev\src\out\QAProduct1.jar %BASE_DIR%\sources\QAProduct\nonuitest\JUnit\Testing_Framework\extras\lib 
xcopy %BASE_DIR%\sources\QAProduct\dev\src\out\QAProduct1.jar %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib 

mkdir %BASE_DIR%\output\libraries
xcopy %BASE_DIR%\sources\QAProduct\dev\src\lib %BASE_DIR%\output\libraries /s /e

mkdir %BASE_DIR%\output\sources
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src %BASE_DIR%\output\sources /s /e

mkdir %BASE_DIR%\output\unittests

if errorlevel 1 (
echo Failure Reason Given is %errorlevel%
exit /b %errorlevel%
)

exit /b 0;