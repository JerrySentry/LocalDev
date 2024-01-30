# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=jan_29_sf1&commit=65238bcff4f9d7b58b810be581c0e33b9f9c638e&token=aad91b00-cfc5-4b4e-be59-af139ec92766&service=github&owner=JerrySentry&repo=LocalDev')

# echo $RES
# URL=($RES)

# curl -v --upload-file coverage.xml ${URL[1]}






# Example-python-fork
# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=12f3bd8b61cc151c9f3735b83c1ba3e0614d959e&token=d4e38c30-4694-45c7-990f-c2e8977b53b4&slug=codecov%2Fexample-python-fork')



# Example-python-fork-2
# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=63c0601e62c1dbe04117b24e780698c63a34f75e&token=bf87c551-e4ac-40ed-b874-1788f78de509&slug=codecov%2Fexample-python')


# LocalDev
RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=63c0601e62c1dbe04117b24e780698c63a34f75e&token=aad91b00-cfc5-4b4e-be59-af139ec92766&slug=codecov%2Fexample-python')


echo $RES
URL=($RES)

curl -v --upload-file .coverage ${URL[1]}


