# Test bash script for deployment

echo "Hello from $BUILDKITE_BRANCH branch"

if [ -f "$BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches" ]; then 
	sed -i.bak "s/$BUILDKITE_BRANCH//g;/^$/d" $BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches
else
	touch $BUILDKITE_AGENT_META_DATA_GIT_CACHE_DIR/tested-branches
fi

composer install 
vendor/bin/phpunit --bootstrap src/Email.php tests/EmailTest

