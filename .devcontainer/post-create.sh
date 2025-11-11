#!/usr/bin/env bash

# Install Node
curl -fsSL https://fnm.vercel.app/install | bash
export PATH="/home/vscode/.local/share/fnm:$PATH"
eval "$(fnm env)"
fnm install --latest
fnm use --latest

# Install Java + Gradle
sudo apt-get install -y openjdk-21-jdk curl unzip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle 8.7

echo "Dev container setup complete."