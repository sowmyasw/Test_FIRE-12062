set -e
set -o pipefail

export SHELL=/bin/bash

export CLASSPATH=$WORKSPACE/sources/QAProduct/dev/src/lib/javax.servlet_3.0.0.v201112011016.jar

cd $WORKSPACE/sources/QAProduct/dev/src/src/com/devfactory/qa/sample

find -name "*.java" > sources.txt

javac -cp $CLASSPATH @sources.txt

cd $WORKSPACE/sources/QAProduct/dev/src/src/

jar cvf QAProduct1.jar ./com/devfactory/qa/sample/HelloWorld.class

cd $WORKSPACE

mkdir installers

cd installers

cp $WORKSPACE/sources/QAProduct/dev/src/src/com/devfactory/qa/sample/*.class .

cp $WORKSPACE/sources/QAProduct/dev/src/src/QAProduct1.jar $WORKSPACE/sources/QAProduct/nonuitest/TestNG/lib