#!/bin/bash
# --------------------------------------------
# Run Prettier to automatically format the repo
# --------------------------------------------

set -e

echo "🎨 Running Prettier to format all files..."
npx prettier --write .

echo "✅ Formatting complete!"