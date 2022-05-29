#!/usr/bin/env bash

_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run \
  -v "${_DIR}":/src/workspace \
  -w /src/workspace \
  lahmanja/arch:v1.0.0 \
  bazel run //:requirements.update
