#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

echo "Building tools..."

# Camino-Node root folder
CAMINO_NODE_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )"; cd .. && pwd )

# Load the constants
source "$CAMINO_NODE_PATH"/scripts/constants.sh

# Create tools directory
tools_dir=$build_dir/tools/
mkdir -p $tools_dir

go build -ldflags="-s -w" -o "$tools_dir/cert" "$CAMINO_NODE_PATH/tools/cert/"*.go