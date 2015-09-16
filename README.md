# docker-jsonlint

# Intro
 Dockerfile for jsonlint / jsondiffpatch automation build

# Usage
 `docker pull sahsu/jsonlint`
 `docker run -it --rm --name jsonlint -v "${DEST_JSON_DIRECTORY}:/src/" sahsu/jsonlint {jsonlint | jsondiffpatch } ${JSON_FILE}`

# Example
 `cd ${JSON_FILE_DIRECTORY}`
 
 Verify a json file with docker-jsonlint:
 `sudo docker run -it --rm --name jsonlint -v `pwd`:/src/ jsonlint jsonlint JSON_A.json`

 json diff with two json with jsondiffpatch:
 `sudo docker run -it --rm --name jsonlint -v `pwd`:/src/ jsonlint jsondiffpatch JSON_A.json JSON_B.json | less`

# Referenace
 Mostly code from https://github.com/lintci/lint_trap/blob/master/docker/jsonlint/Dockerfile but added jsondiffpatch.
