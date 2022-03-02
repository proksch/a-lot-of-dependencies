#!/bin/bash

VERSION=$1
echo "Providing version ${VERSION} ..."

LOCAL_REPO="../repo/"
BASE="target/X-${VERSION}"
POM=pom.xml
JAR="$BASE.jar"
SOURCES="$BASE-sources.jar"
JAVADOC="$BASE-javadoc.jar"

#echo "LOCAL_REPO: $LOCAL_REPO"
#echo "POM: $POM"
#echo "JAR: $JAR"

mvn versions:set -DnewVersion=$VERSION

mvn package install:install-file \
	-DpomFile=$POM \
	-Dfile=$JAR \
	-DlocalRepositoryPath=$LOCAL_REPO \
	-DcreateChecksum=true

