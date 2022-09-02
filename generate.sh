docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli:v6.0.1 generate \
    -i https://mobileid.ligasw.net:8443/v3/api-docs.yaml \
    -g dart-dio \
    -o /local/ \
    --additional-properties pubName=mobileid_api,pubVersion=0.1.0,pubDescription="A client for talking to the MobileID backend",pubAuthor="Liga Software ApS",pubHomepage=https://github.com/Liga-Software-ApS/mobileid-api-dart
