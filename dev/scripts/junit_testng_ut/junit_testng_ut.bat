

REM =========================UT execute ===============================
REM Step1: Set classpath to product bin folder

SET CLASSPATH=%BASE_DIR%\dev\src\out;

REM Step2: Change Directory to the TestNG folder for TestNG tests

cd %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\ATCs\BasicSimpleTest\src

java -cp %BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib\testng-6.9.5.jar;%BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib\jcommander.jar;%BASE_DIR%\sources\QAProduct\nonuitest\TestNG\lib\QAProduct.jar;. org.testng.TestNG testng.xml


REM Step3: Change Directory to the UT test base java file folder for JUnit tests

cd C:\junit-testbase\

echo "Changed directory to JUnit test base folder"

REM ant all -Dworking.dir="%BASE_DIR%\sources\QAProduct\nonuitest\JUnit\ATCs" -Dtest.list="536708|546454|546455|546456|546457|546458"


exit /b 0;