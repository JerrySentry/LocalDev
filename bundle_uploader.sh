How to Test Local Things Bundle Analysis

#!/usr/bin/env bash

# staging
#RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token bf6c89c8-ddf1-4994-abac-96533e1d9904" --data '{"commit": "138a243b2e50efa1de356117af27d0728c50ab0c", "slug": "scott-codecov::::codecov-test"}' https://stage-api.codecov.dev/upload/bundle_analysis/v1)

# local
RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token aad91b00-cfc5-4b4e-be59-af139ec92766" --data '{"commit": "11eb3512ca5f4622769e377720955d47b57a91f7", "slug": "JerrySentry::::LocalDev"}' http://localhost:8000/upload/bundle_analysis/v1)
echo $RES

URL=$(echo $RES | jq -r '.url')
echo $URL

curl -v --upload-file b5.json $URL