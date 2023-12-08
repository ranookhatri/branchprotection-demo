#!/bin/bash
# Define branch and tag names
BRANCH_NAME="feature/version-1.0"
TAG_NAME="v1.0"
COMMIT_MESSAGE="$BRANCH_NAME created"

# Create and switch to the release branch
git checkout -b $BRANCH_NAME

# Make changes, if needed
# Commit the changes
git commit -am "$COMMIT_MESSAGE"

# Push the branch to the remote repository
git push origin $BRANCH_NAME

# Create a tag for the $BRANCH_NAME
git tag -a $TAG_NAME -m "$COMMIT_MESSAGE"

# Push the tag to the remote repository
git push origin $TAG_NAME

echo "Branch $BRANCH_NAME and Tag $TAG_NAME created successfully."