curl "http://localhost:4741/products/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "retail_price": "'"${PRICE}"'"
    }
  }'

  echo
