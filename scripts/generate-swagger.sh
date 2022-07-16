# Stable Version
# wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.1.0/openapi-generator-cli-5.1.0.jar -O openapi-generator-cli.jar

# 5.0.0 Beta with DartEnums
# wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.0.0-beta2/openapi-generator-cli-5.0.0-beta2.jar -O openapi-generator-cli.jar

echo "Generating Client into temp folder"
rm ./scripts/swagger.json
echo "Clearing openapi folder"
rm -rf plugins/openapi

set -e
wget http://localhost:7071/api/documentation-json -O ./scripts/swagger.json
java -jar openapi-generator-cli.jar generate -i ./scripts/swagger.json -g dart -o ./plugins/fleetonrouteapi --skip-validate-spec --model-name-suffix Model --type-mappings "Object"="Map" --additional-properties=pubLibrary=fleetonrouteapi --additional-properties=pubName=fleetonrouteapi

echo "Copying swagger.json into assets directory, and jq the necessary portion only"
cat ./scripts/swagger.json | jq '.info' -c > ./assets/config/fleetonrouteapi.swagger.json
echo "Done"