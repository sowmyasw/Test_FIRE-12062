

REM =========================UT execute ===============================
REM Step1: Set classpath to product bin folder

SET CLASSPATH=%BASE_DIR%\dev\src\bin;

REM Step2: Change Directory to the UT test base java file folder

cd C:\junit-testbase\

echo "Changed directory to JUnit test base folder"

ant all -Dworking.dir="%BASE_DIR%\sources\QAProduct\nonuitest\JUnit\ATCs" -Dtest.list="536708|546454|546455|546456|546457|546458"

exit /b 0;