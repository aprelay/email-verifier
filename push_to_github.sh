#!/bin/bash
# Push email-verifier to GitHub

echo "🚀 Pushing to GitHub: aprelay/email-verifier"
echo ""
echo "This will push all your code including:"
echo "  ✅ Email Verification System v4.0.21"
echo "  ✅ All documentation"
echo "  ✅ Configuration files"
echo ""

# Ensure we're in the right directory
cd /home/user/email-verifier

# Check if remote exists
if ! git remote | grep -q origin; then
    echo "Adding GitHub remote..."
    git remote add origin https://github.com/aprelay/email-verifier.git
fi

# Ensure we're on main branch
git branch -M main

# Show what will be pushed
echo "Files to push:"
git log --oneline -5
echo ""

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Check: https://github.com/aprelay/email-verifier"
