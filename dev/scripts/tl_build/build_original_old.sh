chown -R alinebuild /opt

export SHELL=/bin/bash

cd /opt/dfinstaller/sources/QAProduct/dev/src/src/com/devfactory/qa/sample

find -name "*.java" > sources.txt

javac @sources.txt

cd /opt/dfinstaller/

mkdir output

cd output

mkdir installers

cd installers

cp /opt/dfinstaller/sources/QAProduct/dev/src/src/com/devfactory/qa/sample/*.class .
