@echo off
set "TARGET=%~1"
if "%TARGET%"=="" (
    echo Usage: get [filename]
    echo Example: get file1.zip
    exit /b
)

:: Map names or shortcuts to direct download URLs
if /i "%TARGET%"=="tool" set "URL=https://setup.office.com/"


if "%URL%"=="" (
    echo Unknown key: %TARGET%
    exit /b
)

echo Downloading %TARGET%...
curl -L "%URL%" -o "%TARGET%"
echo Done! Saved as %TARGET%.
