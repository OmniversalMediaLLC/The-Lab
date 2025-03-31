#!/bin/bash

cd ~/Aether_Master || exit

# Fetch latest updates first
git fetch origin

# Check if there are any local changes
if [[ -n $(git status --porcelain) ]]; then
    echo "🔄 Changes detected. Committing and pushing..."

    # Add all changes
    git add .

    # Commit with timestamp
    git commit -m "🔄 Auto-sync: $(date '+%Y-%m-%d %H:%M:%S')"

    # Push to GitHub
    git push origin main
else
    echo "✅ No changes to sync."
fi
