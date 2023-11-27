@echo off
for /f "delims=" %%i in ('node -p "require('./package.json').nitroVersion"') do set NITRO_VERSION=%%i

if "%GPU%" == "true" (
    .\node_modules\.bin\download https://github.com/janhq/nitro/releases/download/v%NITRO_VERSION%/nitro-%NITRO_VERSION%-win-amd64-cuda.zip -e --strip 1 -o ./nitro
) else (
    .\node_modules\.bin\download https://github.com/janhq/nitro/releases/download/v%NITRO_VERSION%/nitro-%NITRO_VERSION%-win-amd64.zip -e --strip 1 -o ./nitro
)