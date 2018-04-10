# docker-jsonlint

# Intro
 Dockerfile for jsonlint / jsondiffpatch automation build

# Usage
 1. pull image first:

 `docker pull sahsu/jsonlint`

 1. run it with:

 `docker run -it --rm --name jsonlint -v "${DEST_JSON_DIRECTORY}:/src/" sahsu/jsonlint {jsonlint | jsondiffpatch } ${JSON_FILE}`

# Example
 1. if you using zsh, you can do ( hopefully helps
 ```
 jd () {
        sudo docker run -t --rm -v `pwd`:/src sahsu/docker-jsonlint jsondiffpatch /src/$1 /src/$2
}
```

 1. go to the json file directory:

 `cd ${JSON_FILE_DIRECTORY}`
 
 1. Verify a json file with docker-jsonlint:

 `sudo docker run --rm --name jsonlint -v `pwd`:/src/ jsonlint jsonlint JSON_A.json`

 1. json diff with two json with jsondiffpatch:

 `sudo docker run --rm --name jsonlint -v `pwd`:/src/ jsondiffpatch JSON_A.json JSON_B.json | less`

 1. json minify:
 
 `sudo docker run --rm --name jsonlint -v `pwd`:/src/ jsonlint json-minify JSON_A.json`
