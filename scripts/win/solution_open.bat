@echo off

pushd .

call config.bat

cd %build_path%
start %project_name%.sln

popd
