# Test bash script for deployment

echo "Hello from on success script"

#current folder
echo $BUILDKITE_BUILD_CHECKOUT_PATH
# current branch name
echo $BUILDKITE_BRANCH

echo $BUILDKITE_AGENT_NAME 

curl "https://api.buildkite.com/v2/organizations/equals-self-equals/agent/$BUILDKITE_AGENT_NAME?access_token=e993fe6a2b043933b4e6cd4a18e47382cead1689"
