export CLASSPATH=$CLASSPATH:$WORKSPACE/nonuitest/TestNG/lib/testng-6.9.5.jar:$WORKSPACE/nonuitest/TestNG/lib/jcommander.jar:$WORKSPACE/nonuitest/TestNG/lib/QAProduct1.jar:.

cd $WORKSPACE/nonuitest/TestNG/ATCs/BasicSimpleTest/src

java -cp $CLASSPATH org.testng.TestNG testng.xml

exit 0