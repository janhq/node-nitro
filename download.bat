@echo off
if "%NITRO_VERSION%"=="" (
    for /f "delims=" %%i in ('node -p "require('./package.json').nitroVersion"') do set NITRO_VERSION=%%i
)

if "%GPU%" == "true" (
    .\node_modules\.bin\download https://github.com/janhq/nitro/releases/download/v%NITRO_VERSION%/nitro-%NITRO_VERSION%-win-amd64-cuda.tar.gz -e --strip 1 -o .
) else (
    .\node_modules\.bin\download https://github.com/janhq/nitro/releases/download/v%NITRO_VERSION%/nitro-%NITRO_VERSION%-win-amd64.tar.gz -e --strip 1 -o .
)