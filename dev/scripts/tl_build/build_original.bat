cd %BASE_DIR%\sources\QAProduct\dev\src\src\com\devfactory\qa\sample

echo "Changed directory to sources"

javac -cp "%BASE_DIR%\sources\QAProduct\dev\src\lib\javax.servlet_3.0.0.v201112011016.jar"  HelloWorld.java || echo "Error: Build failed" && exit /b 1; 

echo "Compilation completed successfully"

mkdir %BASE_DIR%\output\binaries
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src\com\devfactory\qa\sample\HelloWorld.class %BASE_DIR%\output\binaries /s /e

mkdir %BASE_DIR%\output\installers
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src\com\devfactory\qa\sample\HelloWorld.class %BASE_DIR%\output\installers /s /e

REM -------------------------------------For UT----------------------------------------------
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src\com\devfactory\qa\sample\HelloWorld.class %BASE_DIR%\sources\QAProduct\nonuitest\JUnit\Testing_Framework\extras\lib 
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src\com\devfactory\qa\sample\HelloWorld.class %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib 

mkdir %BASE_DIR%\output\libraries
xcopy %BASE_DIR%\sources\QAProduct\dev\src\lib %BASE_DIR%\output\libraries /s /e

mkdir %BASE_DIR%\output\sources
xcopy %BASE_DIR%\sources\QAProduct\dev\src\src %BASE_DIR%\output\sources /s /e

if errorlevel 1 (
echo Failure Reason Given is %errorlevel%
exit /b %errorlevel%
)

exit /b 0;