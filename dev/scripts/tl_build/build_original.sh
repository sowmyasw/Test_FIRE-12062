set -e
set -o pipefail

chown -R alinebuild /opt

export SHELL=/bin/bash

export CLASSPATH=/opt/dfinstaller/sources/QAProduct/dev/src/lib/javax.servlet_3.0.0.v201112011016.jar

cd /opt/dfinstaller/sources/QAProduct/dev/src/src/com/devfactory/qa/sample

find -name "*.java" > sources.txt

javac -cp $CLASSPATH @sources.txt

cd /opt/dfinstaller/sources/QAProduct/dev/src/src/

jar cvf QAProduct1.jar ./com/devfactory/qa/sample/HelloWorld.class

cd /opt/dfinstaller/output/

mkdir installers

cd installers

cp /opt/dfinstaller/sources/QAProduct/dev/src/src/com/devfactory/qa/sample/*.class .

cp /opt/dfinstaller/sources/QAProduct/dev/src/src/QAProduct1.jar /opt/dfinstaller/sources/QAProduct/nonuitest/TestNG/lib

