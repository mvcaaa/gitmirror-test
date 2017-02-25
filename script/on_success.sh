#!/bin/bash

# Test bash script for deployment

echo "Hello from on success script"

#current folder
echo $BUILDKITE_BUILD_CHECKOUT_PATH
# current branch name
echo $BUILDKITE_BRANCH

# Agent meta
echo $BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR

GIT_CLONE_DIR="$BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/$BUILDKITE_BRANCH"

if [ -d "$GIT_CLONE_DIR" ]; then rm -Rf $GIT_CLONE_DIR; mkdir $GIT_CLONE_DIR; fi

rsync -av --exclude='.git' $BUILDKITE_BUILD_CHECKOUT_PATH $GIT_CLONE_DIR
