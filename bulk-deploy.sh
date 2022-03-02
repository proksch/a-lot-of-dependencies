#!/bin/bash
for MAJOR in {0..2}
do
	for MINOR in {0..9}
	do
		for PATCH in {0..9}
		do
			./deploy.sh ${MAJOR}.${MINOR}.${PATCH}
		done
	done
done
./deploy.sh 3.0.0


# On first execution, it is necessary to fix the maven-metadata.xml file
cd ../repo/test/x
NORM="maven-metadata.xml"
LOCAL="maven-metadata-local.xml"
if [ ! -L $LOCAL ]; then
	echo "Fixing Maven metadata file"
	mv ${LOCAL} ${NORM}
	ln -s ${NORM} ${LOCAL}
	
	mv ${LOCAL}.md5 ${NORM}.md5
	ln -s ${NORM}.md5 ${LOCAL}.md5
	
	mv ${LOCAL}.sha1 ${NORM}.sha1
	ln -s ${NORM}.sha1 ${LOCAL}.sha1
fi



