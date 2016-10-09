SET PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_40\bin;

cd %BASE_DIR%\sources\QAProduct\dev\src

echo "Changed directory to sources"

call ant %DF_ANT_BUILD_STATS_OPTS% all -debug || echo "Error: Build failed" && exit /b 1; 

REM -------------------------------------For UT----------------------------------------------

cd %BASE_DIR%\sources\QAProduct\dev\src\out
jar cf QAProduct.jar .\*
xcopy %BASE_DIR%\sources\QAProduct\dev\src\out\QAProduct.jar %BASE_DIR%\sources\QAProduct\nonuitest\JUnit\Testing_Framework\extras\lib 
xcopy %BASE_DIR%\sources\QAProduct\dev\src\out\QAProduct.jar %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib 

REM -------------------------------------Publish Installers----------------------------------
mkdir $BASE_DIR\output

mkdir $BASE_DIR\output\installers

xcopy /s /e %BASE_DIR%\sources\QAProduct\dev\src\. %BASE_DIR%\output\installers\
