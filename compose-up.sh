#!/bin/bash
# ----------------------------------------
# Build and start the Docker Compose stack
# in detached mode (background).
# ----------------------------------------

set -e

echo "🚧 Building Docker Compose stack..."
docker compose up --build -d

echo "✅ Containers are up and running (detached mode)."