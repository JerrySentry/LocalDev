How to Test Local Things Bundle Analysis

#!/usr/bin/env bash

# staging
# RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token 81325051-5f42-4415-87e8-692a640de455" --data '{"commit": "0f4a922e6f434c1c172145bf75f491b6afffc344", "slug": "JerrySentry::::LocalDev"}' https://stage-api.codecov.dev/upload/bundle_analysis/v1)

# local
RES=$(curl -X POST -H "Content-Type: application/json" -H "Authorization: token aad91b00-cfc5-4b4e-be59-af139ec92766" --data '{"commit": "78979a5237f2b004011f4330f7f4f1b986d47f35", "slug": "JerrySentry::::LocalDev"}' http://localhost:8000/upload/bundle_analysis/v1)
echo $RES

URL=$(echo $RES | jq -r '.url')
echo $URL

curl -v --upload-file load_test.json $URL