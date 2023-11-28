# Node-Nitro

Node-Nitro is a project that automates the download and setup of the Nitro software. It is designed to work on Windows and supports both the standard and CUDA-enabled versions of Nitro.

## Features

- Automatic download of specific Nitro version
- Support for CUDA-enabled Nitro version
- Easy setup with minimal user input

## Requirements

- Node.js installed

## Usage

To install nitro, run the following command in your terminal:

```bash
# on Linux, macos and windows just run
npm install -g @janhq/nitro

# To specify a version of Nitro to download
# on linux or macos
NITRO_VERSION=0.1.17 && npm install -g @janhq/nitro

# on windows cmd
set NITRO_VERSION=0.1.17 && npm install -g @janhq/nitro

# on windows powershell
$env:NITRO_VERSION="0.1.17"; npm install -g @janhq/nitro

# On linux and windows to install nitro GPU version
# on linux
GPU=true && npm install -g @janhq/nitro

# on windows cmd
set GPU=true && npm install -g @janhq/nitro

# on windows powershell
$env:GPU="true"; npm install -g @janhq/nitro
```

After installation, you can run the following command to download and setup Nitro:

```bash
nitro
```

The script will download the specified version of Nitro and extract it to the current directory.

## License

This project is licensed under the AGPL-3.0 License - see the [LICENSE.md](LICENSE.md) file for details.