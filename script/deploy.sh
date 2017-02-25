# Test bash script for deployment

echo "Hello from develop branch"

composer install 
vendor/bin/phpunit --version
vendor/bin/phpunit --bootstrap src/Email.php tests/EmailTest

