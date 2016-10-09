

REM =========================UT execute ===============================
REM Step1: Change Directory to the UT java file folder

echo "Setting path for JAVAC"

SET PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_40\bin;

cd %BASE_DIR%\sources\QAProduct\dev\src\src\

echo "Changed directory to UT java sources"

javac com\devfactory\qa\sample\test\UT_Basic.java

java -cp . -ea com.devfactory.qa.sample.test.UT_Basic

exit /b 0;