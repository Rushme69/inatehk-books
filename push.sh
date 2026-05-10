#!/bin/bash
cd /home/khetani/inatehk-books
export GH_TOKEN=$(cat /home/khetani/.config/github/token)

# Remove the setup script from the repo
rm -f setup_github.py

# Set remote with token auth
git remote remove origin 2>/dev/null
git remote add origin https://Rushme69:${GH_TOKEN}@github.com/Rushme69/inatehk-books.git

# Ensure we're on main branch
git branch -M main

# Add all files and commit
git add -A
git commit -m "Initial commit: Inatehk Books storefront" --allow-empty 2>/dev/null

# Push
git push -u origin main 2>&1

echo ""
echo "Push complete!"
