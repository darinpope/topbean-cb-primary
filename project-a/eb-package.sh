#!/bin/bash
rm -rf eb-package-prep
rm -f project-a-1.0-SNAPSHOT.zip

mkdir -p eb-package-prep/bin
mkdir -p eb-package-prep/conf
mkdir -p eb-package-prep/lib

cp Dockerfile eb-package-prep/Dockerfile
cp Dockerrun.aws.json eb-package-prep/Dockerrun.aws.json
cp -r target/universal/stage/bin/* eb-package-prep/bin/
cp -r target/universal/stage/conf/* eb-package-prep/conf/
cp -r target/universal/stage/lib/* eb-package-prep/lib/

cd eb-package-prep || exit
zip -r ../project-a-1.0-SNAPSHOT.zip ./*