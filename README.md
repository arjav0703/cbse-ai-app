# CBSE AI Desktop Application
### Built with Electron
---
## Installation
- Windows: Use the latest binary (EXE) from the [releases section](https://github.com/arjav0703/cbse-ai-app/releases)
- MacOS: Use the latest binary (DMG) from the [releases section](https://github.com/arjav0703/cbse-ai-app/releases)
- Debian/Ubuntu: Use the latest binary (DEB) from the [releases section](https://github.com/arjav0703/cbse-ai-app/releases) and install with `sudo apt install ./cbseai.deb`
- Linux: Use the tar.gz file from the [releases section](https://github.com/arjav0703/cbse-ai-app/releases) and directly run the binary

Note: AUR and Nix flake are in development.

### Local development
1. Install [Node.js](https://nodejs.org/en/download)
2. Clone the repository with `git clone https://github.com/arjav0703/cbse-ai-app.git`
3. Navigate to the project directory with `cd ~/Downloads/cbse-ai-app` (for UNIX-like systems).
4. Run `npm install` to install dependencies.
5. Run `npm run start` to launch the Application in development mode.

### Making Binaries (from source)
- Clone this repository: `git clone https://github.com/arjav0703/cbse-ai-app.git`
- To create executables for your platform, run `npm run make`

You may also want to refer to [Electron Forge Docs](https://www.electronforge.io/config/makers/zip) for building from source.
