#!/bin/bash

# Script to create a new blog post
# Usage: ./new-post.sh "Your Post Title"

if [ $# -eq 0 ]; then
    echo "Usage: ./new-post.sh \"Your Post Title\""
    echo "Example: ./new-post.sh \"Setting up a Home Lab for Cybersecurity\""
    exit 1
fi

# Get the title from command line argument
TITLE="$1"

# Generate filename-friendly version of title
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')

# Get current date and time
DATE=$(date '+%Y-%m-%d')
DATETIME=$(date '+%Y-%m-%d %H:%M:%S +0900')

# Create the filename
POST_FILE="_posts/${DATE}-${FILENAME}.md"

# Check if file already exists
if [ -f "$POST_FILE" ]; then
    echo "Error: File $POST_FILE already exists!"
    exit 1
fi

# Copy template and replace placeholders
cp _templates/blog-post-template.md "$POST_FILE"

# Replace placeholders in the new file
sed -i '' "s/REPLACE_WITH_TITLE/$TITLE/g" "$POST_FILE"
sed -i '' "s/YYYY-MM-DD HH:MM:SS +0900/$DATETIME/g" "$POST_FILE"

echo "✅ New blog post created: $POST_FILE"
echo "📝 You can now edit it with: code $POST_FILE"
echo "🌐 View it locally at: http://localhost:4000"
echo ""
echo "When you're ready to publish:"
echo "  git add $POST_FILE"
echo "  git commit -m \"Add new post: $TITLE\""
echo "  git push origin master"
