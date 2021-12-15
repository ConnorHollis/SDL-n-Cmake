@echo off

pushd .

call config.bat

if not exist %build_path%\ (
	mkdir %build_path%
)

cd %build_path%
cmake ..

popd