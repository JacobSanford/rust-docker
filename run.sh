#!/usr/bin/env bash
docker build -t rust-docker:latest .
docker run -it rust-docker:latest
