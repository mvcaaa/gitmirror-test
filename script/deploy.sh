# Test bash script for deployment

echo "Hello from develop branch"

composer install 
vendor/bin/phpunit --bootstrap src/Email.php tests/EmailTest

echo $BUILDKITE_BUILD_CHECKOUT_PATH
