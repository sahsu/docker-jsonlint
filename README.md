# Change Log

## [html-validator-cli-5.0.0](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-5.0.0) (2019-02-22)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.1.4...html-validator-cli-5.0.0)

## [html-validator-cli-4.1.4](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.1.4) (2018-10-20)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.1.3...html-validator-cli-4.1.4)

## [html-validator-cli-4.1.3](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.1.3) (2018-10-11)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.1.1...html-validator-cli-4.1.3)

## [html-validator-cli-4.1.1](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.1.1) (2018-10-02)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/yaml-lint-1.2.4...html-validator-cli-4.1.1)

## [yaml-lint-1.2.4](https://github.com/sahsu/docker-jsonlint/tree/yaml-lint-1.2.4) (2018-06-28)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/jsondiffpatch-0.3.11...yaml-lint-1.2.4)

## [jsondiffpatch-0.3.11](https://github.com/sahsu/docker-jsonlint/tree/jsondiffpatch-0.3.11) (2018-06-26)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.0.4...jsondiffpatch-0.3.11)

## [html-validator-cli-4.0.4](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.0.4) (2018-06-06)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.0.3...html-validator-cli-4.0.4)

## [html-validator-cli-4.0.3](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.0.3) (2018-05-30)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/yaml-lint-1.2.3...html-validator-cli-4.0.3)

## [yaml-lint-1.2.3](https://github.com/sahsu/docker-jsonlint/tree/yaml-lint-1.2.3) (2018-05-28)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.0.2...yaml-lint-1.2.3)

## [html-validator-cli-4.0.2](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.0.2) (2018-05-22)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/html-validator-cli-4.0.1...html-validator-cli-4.0.2)

## [html-validator-cli-4.0.1](https://github.com/sahsu/docker-jsonlint/tree/html-validator-cli-4.0.1) (2018-05-19)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/enable-automatic-check-npm-package-diary...html-validator-cli-4.0.1)

## [enable-automatic-check-npm-package-diary](https://github.com/sahsu/docker-jsonlint/tree/enable-automatic-check-npm-package-diary) (2018-05-15)
[Full Changelog](https://github.com/sahsu/docker-jsonlint/compare/jsonlint-1.6.3...enable-automatic-check-npm-package-diary)

## [jsonlint-1.6.3](https://github.com/sahsu/docker-jsonlint/tree/jsonlint-1.6.3) (2018-05-15)


# Intro
 Docker image for:
 1. jsonlint
 1. jsondiffpatch
 1. prettyjson
 1. json-minify
 1. html-validator-cli
 1. cli-stopwatch
 1. yaml-lint

# auto update
 We now support automaticlly update each npm packages, check diary and will put CHANGELOG in top. 

# Usage
1. pull image first:
   ```
   docker pull sahsu/jsonlint
   ```
1. run it with:
   ```
   docker run -it --rm --name jsonlint -v "${DEST_JSON_DIRECTORY}:/src/" sahsu/jsonlint {jsonlint | jsondiffpatch } ${JSON_FILE}
   ```

# Example
1. if you using zsh, you can do ( hopefully helps
```
jd () {
       sudo docker run -t --rm -v `pwd`:/src sahsu/docker-jsonlint jsondiffpatch /src/$1 /src/$2
       }
```

1. go to the json file directory:
```
cd ${JSON_FILE_DIRECTORY}
```
1. Verify a json file with docker-jsonlint:
```
sudo docker run --rm --name jsonlint -v `pwd`:/src/ sahsu/docker-jsonlint jsonlint JSON_A.json
```
1. json diff with two json with jsondiffpatch:
```
sudo docker run --rm --name jsonlint -v `pwd`:/src/ sahsu/docker-jsonlint jsondiffpatch JSON_A.json JSON_B.json | less
```

1. json minify:
```
sudo docker run --rm --name jsonlint -v `pwd`:/src/ sahsu/docker-jsonlint json-minify JSON_A.json
```

1. yaml-lint
```
docker run -v `pwd`:/src/ --rm sahsu/docker-jsonlint yamllint /src/q.yaml
```
you should see `✔ YAML Lint successful.` otherwise you will see which section is fail.
