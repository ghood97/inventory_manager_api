curl "http://localhost:4741/inventories/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "inventory": {
      "user_id": "'"${USER}"'",
      "product_id": "'"${PRODUCT}"'",
      "price": "'"${PRICE}"'"
    }
  }'

  echo
