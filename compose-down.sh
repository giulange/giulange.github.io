#!/bin/bash
# ----------------------------------------
# Stop and remove all Docker containers,
# networks, and volumes defined in compose.
# ----------------------------------------

set -e

echo "🔻 Stopping and removing Docker Compose stack..."
docker compose down --remove-orphans -v

echo "✅ All containers stopped and volumes removed."