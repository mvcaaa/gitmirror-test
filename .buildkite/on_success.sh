#!/bin/bash

# Test bash script for deployment

echo "Hello from on success script"

#current folder
echo "Source folder:$BUILDKITE_BUILD_CHECKOUT_PATH"
# current branch name
echo "Current branch to deploy:$BUILDKITE_BRANCH"

# Agent meta
echo "Dest folder on agent:$BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR"

GIT_CLONE_DIR="$BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/$BUILDKITE_BRANCH"

if [ -d "$GIT_CLONE_DIR" ]; then rm -Rf $GIT_CLONE_DIR; mkdir $GIT_CLONE_DIR; fi

rsync -av --exclude='.git' --exclude='.buildkite' $BUILDKITE_BUILD_CHECKOUT_PATH/ $GIT_CLONE_DIR

if [ -f "$BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches" ]; then
	echo "$BUILDKITE_BRANCH" | sort -o $BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches - $BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches
else
	exit 1
fi

