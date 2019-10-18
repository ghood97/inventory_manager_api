#!/bin/bash

curl "http://localhost:4741/inventories" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "inventory": {
      "user_id": "'"${USER}"'",
      "product_id": "'"${PRODUCT}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
