@echo off

pushd .

call config.bat

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.com" "%build_path%\%project_name%.sln" /build

popd