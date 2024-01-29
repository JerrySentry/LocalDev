





RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=jan_29_2&commit=7fa37d3ef4eb599eb3d4f9a4f658a9536bf9bc98&token=aad91b00-cfc5-4b4e-be59-af139ec92766&service=github&owner=JerrySentry&repo=LocalDev')



echo $RES

URL=($RES)

curl -v --upload-file coverage.xml ${URL[1]}