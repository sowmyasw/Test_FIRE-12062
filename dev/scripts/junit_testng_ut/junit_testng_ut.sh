export TESTNG_HOME=/usr/local/testng

export CLASSPATH=$CLASSPATH:$TESTNG_HOME/testng-6.9.13-SNAPSHOT.jar:/opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/lib/testng-6.9.5.jar:/opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/lib/jcommander.jar:/opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/lib/QAProduct1.jar:.

cd /opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/ATCs/BasicSimpleTest/src

java -cp $CLASSPATH org.testng.TestNG testng.xml

exit 0