#!/bin/bash

curl "https://afternoon-sierra-41113.herokuapp.com/products/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
