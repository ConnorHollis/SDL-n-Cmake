#!/bin/bash

pushd .

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. "$script_dir"/config.sh

if [ ! -d "$build_path" ]; then
	mkdir $build_path
fi

cd $build_path
cmake ..

popd
