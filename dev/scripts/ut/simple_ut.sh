chown -R alinebuild /opt

export SHELL=/bin/bash

export CLASSPATH=/opt/dfinstaller/sources/QAProduct/dev/src/src:/opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/lib/QAProduct.jar:/opt/dfinstaller/sources/QAProduct/nonuitest/SimpleUT/src:/opt/dfinstaller/sources/QAProduct/nonuitest/SimpleUT/lib/junit-4.8.2.jar

cd /opt/dfinstaller/sources/QAProduct/nonuitest/SimpleUT/src/com/devfactory/simple/test

find -name "*.java" > sources.txt

javac -cp $CLASSPATH @sources.txt

echo Completed Compiling the Tests

cd /opt/dfinstaller/sources/QAProduct/nonuitest/SimpleUT/src

java -cp $CLASSPATH org.junit.runner.JUnitCore com.devfactory.simple.test.BasicSimpleTest

echo Completed Executing the Tests

