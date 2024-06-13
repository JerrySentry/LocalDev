#!/usr/bin/env bash

# staging
# RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token 81325051-5f42-4415-87e8-692a640de455" --data '{"branch": "mar13_1", "commit": "71dd2ba7f9b84d2de38400620389459bc8f2bed7", "slug": "JerrySentry::::LocalDev"}' https://stage-api.codecov.dev/upload/bundle_analysis/v1)

# local huh 3
RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token 0418a9ad-f46d-4dd6-9111-b99cdb0b0aa8" --data '{"branch": "main", "commit": "d60d1ec6f49061d04b8d08fe271aba49c6af7014", "slug": "JerrySentry::::LocalDev"}' http://localhost:8000/upload/bundle_analysis/v1)

echo $RES

URL=$(echo $RES | jq -r '.url')
echo $URL

curl -v --upload-file c1.json $URL
# curl -v --upload-file b1.json $URL
