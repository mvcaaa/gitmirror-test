# Test bash script for deployment

echo "Hello from on success script"

#current folder
echo $BUILDKITE_BUILD_CHECKOUT_PATH
# current branch name
echo $BUILDKITE_BRANCH

buildkite-agent meta-data get "git_cache_dir"
