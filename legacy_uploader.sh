# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=jan_29_sf1&commit=65238bcff4f9d7b58b810be581c0e33b9f9c638e&token=aad91b00-cfc5-4b4e-be59-af139ec92766&service=github&owner=JerrySentry&repo=LocalDev')

# echo $RES
# URL=($RES)

# curl -v --upload-file coverage.xml ${URL[1]}


# # # # # # # # # # #



# Example-python-fork
# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=12f3bd8b61cc151c9f3735b83c1ba3e0614d959e&token=d4e38c30-4694-45c7-990f-c2e8977b53b4&slug=codecov%2Fexample-python-fork')



# Example-python-fork-2
# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=63c0601e62c1dbe04117b24e780698c63a34f75e&token=bf87c551-e4ac-40ed-b874-1788f78de509&slug=codecov%2Fexample-python')


# LocalDev
RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?pr=&branch=main&commit=042bb1a1275e63fd413abfabc823892b663ade53&token=aad91b00-cfc5-4b4e-be59-af139ec92766&slug=codecov%2FLocalDev')


# python-testing
# RES=$(curl --location --request POST 'http://localhost:8000/upload/v4?branch=main&commit=41c93c83f8a1c2d8dfb38b809da59dcb0a8bcd8e&token=da6b85a6-22a4-4137-b3fa-a3c1344af349&slug=codecov%2Fpython-testing')


# python-testing
# RES=$(curl --location --request POST 'https://stage-api.codecov.dev/upload/v4?branch=main&commit=41c93c83f8a1c2d8dfb38b809da59dcb0a8bcd8e&token=aa146971-6e3a-448f-ade6-6946e3ac8d40&slug=codecov%2Fpython-testing')


# test-results-parser
# RES=$(curl --location --request POST 'https://stage-api.codecov.dev/upload/v4?branch=main&commit=e22e0d9cf2cba2ce769a8c1d8baecdf8fed8bf10&token=8c45d3b6-af3c-422d-9428-c42ead92ee42&slug=codecov%2Ftest-results-parser')


echo $RES
URL=($RES)

curl -v --upload-file coverage.xml ${URL[1]}




# start on feat123 push commit C1
# Upload -> creates commit C1 (branch=feat123)
#            creates branch (head=C1, branch=feat123)
# Go to main -> git merge feat123
# Webhook runs: updates commit C1 (branch=main)
#    This causes DB trigger to run, update branch (head=C1, branch=main)
#                                   existing one is untouched branch (head=C1, branch=feat123)

#

# Snowflake
# Main head Commit C0 (branch=main) / Branch (head=C0, branch=main)
#  upload for the feat123 set branch=main
# start on feat123 push commit C1
# Upload (branch=main) -> creates commit C1 (branch=main)
#            creates branch (head=C1, branch=main)
# Go to main -> git merge feat123
# Webhook runs: updates commit C1 (but will not update anything) (branch=main)
#    Thus trigger does not run
#    existing one is untouched branch (head=C1, branch=main)
#                                     (head=C0, branch=main)
# 


# (main) git checkout -b feat2
# (feat2) make a commit (C1) -> push to GH



# first push does not call webhook
# git merge main -> see that this commit exists in DB -> update the branch

# webhook (update branch name if different -> commit_updates_head) happens before upload
#               requires state to be complete
#
#
#
#
#
