How to Test Local Things Bundle Analysis

#!/usr/bin/env bash

# staging
# RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token 81325051-5f42-4415-87e8-692a640de455" --data '{"commit": "c3765720cb5581f042721361a433aeaadf6a13fd", "slug": "JerrySentry::::LocalDev"}' https://stage-api.codecov.dev/upload/bundle_analysis/v1)

# local
RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token aad91b00-cfc5-4b4e-be59-af139ec92766" --data '{"commit": "c3765720cb5581f042721361a433aeaadf6a13fd", "slug": "JerrySentry::::LocalDev"}' http://localhost:8000/upload/bundle_analysis/v1)
echo $RES

URL=$(echo $RES | jq -r '.url')
echo $URL

curl -v --upload-file b_good.json $URL