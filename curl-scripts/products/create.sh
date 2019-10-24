#!/bin/bash

curl "https://afternoon-sierra-41113.herokuapp.com/products" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "retail_price": "'"${PRICE}"'"
    }
  }'

echo
