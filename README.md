# rust-docker
Simple boilerplate to jumpstart rust application development, leveraging docker containers.

## Usage
Edit source, then ```./run.sh``` to compile and run.

## Features
* ```no dependencies```: Local development instances do not require rust installed.
* ```cargo-chef```: Leverages cargo-chef to cache crates between builds in docker layers. Speeds up builds.
* ```distroless image```: Final binary image is based on [gcr.io/distroless/cc](https://console.cloud.google.com/gcr/images/distroless/GLOBAL/cc).