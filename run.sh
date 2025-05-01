#!/usr/bin/env bash

set -e

KEY_PATH="${1:-/home/fatemeazeami1990/.ssh/id_ed25519}"

# Ensure ssh-agent is running
if [[ -z "$SSH_AUTH_SOCK" ]]; then
  eval "$(ssh-agent -s)"
fi

# Add SSH key if not loaded
if ! ssh-add -l | grep -q "$KEY_PATH"; then
  echo "🔐 Adding SSH key: $KEY_PATH"
  ssh-add "$KEY_PATH"
fi

# Determine whether to use sudo with Docker
DOCKER_CMD="docker"
if ! docker ps > /dev/null 2>&1; then
  if command -v sudo > /dev/null; then
    DOCKER_CMD="sudo docker"
  else
    echo "❌ Docker is not accessible and sudo is not available."
    exit 1
  fi
fi

# Build Docker image if missing
if ! $DOCKER_CMD image inspect jekyll-site > /dev/null 2>&1; then
  echo "🔧 Building Docker image 'jekyll-site'..."
  $DOCKER_CMD build -t jekyll-site .
fi

# Run Docker container with SSH forwarding
echo "🚀 Starting Jekyll container with SSH support..."
$DOCKER_CMD run -it --rm \
  -v "$SSH_AUTH_SOCK:/ssh-agent" \
  -e SSH_AUTH_SOCK=/ssh-agent \
  -v "$PWD:/srv/jekyll" \
  -w /srv/jekyll \
  -p 4000:4000 \
  jekyll-site bash
