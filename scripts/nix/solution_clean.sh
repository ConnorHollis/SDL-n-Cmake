#!/bin/bash

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. "$script_dir"/config.sh

rm -rf $bin_path
rm -rf $build_path
rm -rf $externals_path
