#!/usr/bin/env bash

# staging
# RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token 81325051-5f42-4415-87e8-692a640de455" --data '{"branch": "mar13_1", "commit": "71dd2ba7f9b84d2de38400620389459bc8f2bed7", "slug": "JerrySentry::::LocalDev"}' https://stage-api.codecov.dev/upload/bundle_analysis/v1)

# local
RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token aad91b00-cfc5-4b4e-be59-af139ec92766" --data '{"branch": "main", "commit": "e764caecf66edb87ce58e0831d749850b87011f2", "slug": "JerrySentry::::LocalDev"}' http://localhost:8000/upload/bundle_analysis/v1)

echo $RES

URL=$(echo $RES | jq -r '.url')
echo $URL

curl -v --upload-file b5.json $URL