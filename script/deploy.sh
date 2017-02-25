# Test bash script for deployment

echo "Hello from develop branch"

composer install 
vendor/bin/phpunit --bootstrap src/Email.php tests/EmailTest

#current folder
echo $BUILDKITE_BUILD_CHECKOUT_PATH
# current branch name
echo $BUILDKITE_BRANCH

echo $BUILDKITE_AGENT_META_DATA

