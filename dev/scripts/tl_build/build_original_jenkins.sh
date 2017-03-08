set -e
set -o pipefail

#chown -R alinebuild /opt

export SHELL=/bin/bash

export CLASSPATH=/dev/src/lib/javax.servlet_3.0.0.v201112011016.jar

cd /dev/src/src/com/devfactory/qa/sample

find -name "*.java" > sources.txt

javac -cp $CLASSPATH @sources.txt

cd /dev/src/src/

jar cvf QAProduct1.jar ./com/devfactory/qa/sample/HelloWorld.class

cd /

mkdir installers

cd installers

cp /dev/src/src/com/devfactory/qa/sample/*.class .

cp /dev/src/src/QAProduct1.jar /nonuitest/TestNG/lib