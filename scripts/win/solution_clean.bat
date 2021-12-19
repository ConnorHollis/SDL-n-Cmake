@echo off

call config.bat

taskkill /IM devenv.exe /FI "WINDOWTITLE eq %project_name%*"
timeout /T 5

rmdir /s /q %bin_path%
rmdir /s /q %build_path%
rmdir /s /q %externals_path%