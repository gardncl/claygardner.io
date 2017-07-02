#!/bin/bash
set -e

hugo -v

aws s3 sync --acl "public-read" --sse "AES256" public/ s3://${BUCKET_NAME} --exclude 'post'

aws cloudfront create-invalidation --distribution-id ${DISTRIBUTION_ID} --paths /index.html / /page/*