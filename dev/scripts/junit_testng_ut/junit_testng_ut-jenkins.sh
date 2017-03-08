export TESTNG_HOME=/usr/local/testng

export CLASSPATH=$CLASSPATH:$TESTNG_HOME/testng-6.9.13-SNAPSHOT.jar:/nonuitest/TestNG/lib/testng-6.9.5.jar:/nonuitest/TestNG/lib/jcommander.jar:/nonuitest/TestNG/lib/QAProduct1.jar:.

cd /nonuitest/TestNG/ATCs/BasicSimpleTest/src

java -cp $CLASSPATH org.testng.TestNG testng.xml

exit 0