#!/bin/bash
# Define branch and tag names
# BRANCH_NAME=$1
# TAG_NAME=$2
BRANCH_NAME="testfeature"
TAG_NAME="v3.0"
BRANCH_COMMIT_MESSAGE="Create Branch $BRANCH_NAME"
TAG_COMMIT_MESSAGE="Create Tag $TAG_NAME"

# Create and Switch to the $BRANCH_NAME
git checkout -b $BRANCH_NAME

# Commit the changes
git commit -am "$BRANCH_COMMIT_MESSAGE"

# Push the branch to the remote repository
git push origin $BRANCH_NAME

# Create a tag for the $BRANCH_NAME
git tag -a $TAG_NAME -m "$TAG_COMMIT_MESSAGE"

# Push the tag to the remote repository
git push origin $TAG_NAME

echo "Branch = $BRANCH_NAME and Tag = $TAG_NAME created successfully."