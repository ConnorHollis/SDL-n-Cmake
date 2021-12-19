#!/bin/bash

project_name=SDLnCMAKE
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

root_path="$script_dir"/../..

bin_path="$root_path"/bin
build_path="$root_path"/build
externals_path="$root_path"/external
