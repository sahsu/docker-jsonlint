# docker-jsonlint

# Intro
 Dockerfile for jsonlint / jsondiffpatch automation build

# Usage
 1. pull image first:

 `docker pull sahsu/jsonlint`

 1. run it with:

 `docker run -it --rm --name jsonlint -v "${DEST_JSON_DIRECTORY}:/src/" sahsu/jsonlint {jsonlint | jsondiffpatch } ${JSON_FILE}`

# Example

 1. go to the json file directory:

 `cd ${JSON_FILE_DIRECTORY}`
 
 1. Verify a json file with docker-jsonlint:

 `sudo docker run -it --rm --name jsonlint -v `pwd`:/src/ jsonlint jsonlint JSON_A.json`

 1. json diff with two json with jsondiffpatch:

 `sudo docker run -it --rm --name jsonlint -v `pwd`:/src/ jsonlint jsondiffpatch JSON_A.json JSON_B.json | less`

# Referenace
 Mostly code from https://github.com/lintci/lint_trap/blob/master/docker/jsonlint/Dockerfile but added jsondiffpatch.
