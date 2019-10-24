curl "https://afternoon-sierra-41113.herokuapp.com/products/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "retail_price": "'"${PRICE}"'"
    }
  }'

  echo
