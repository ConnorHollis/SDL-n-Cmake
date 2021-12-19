#!/bin/bash

pushd .

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. "$script_dir"/config.sh

cd $build_path

make

popd
