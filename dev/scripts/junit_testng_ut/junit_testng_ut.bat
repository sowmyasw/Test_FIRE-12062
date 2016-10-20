

REM =========================TestNg UT execute ===============================
cd %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\ATCs\BasicSimpleTest\src

java -cp %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib\testng-6.9.5.jar;%BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib\jcommander.jar;%BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib;%BASE_DIR%\sources\QAProduct\dev\src\src;. org.testng.TestNG testng.xml

exit /b 0;
