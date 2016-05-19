#!/bin/bash

docker build -t wesley-latex .
docker run --name $(basename $PWD) --rm -v ${PWD}:/data wesley-latex "$@"
