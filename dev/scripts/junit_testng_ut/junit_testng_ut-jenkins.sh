export CLASSPATH=$CLASSPATH:$WORKSPACE/sources/QAProduct/nonuitest/TestNG/lib/testng-6.9.5.jar:$WORKSPACE/sources/QAProduct/nonuitest/TestNG/lib/jcommander.jar:$WORKSPACE/sources/QAProduct/nonuitest/TestNG/lib/QAProduct1.jar:.

cd $WORKSPACE/sources/QAProduct/nonuitest/TestNG/ATCs/BasicSimpleTest/src

java -cp $CLASSPATH org.testng.TestNG testng.xml

exit 0