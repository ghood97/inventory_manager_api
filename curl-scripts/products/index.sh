#!/bin/bash

curl "https://afternoon-sierra-41113.herokuapp.com/products" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
