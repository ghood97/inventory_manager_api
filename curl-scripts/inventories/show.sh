#!/bin/bash

curl "http://localhost:4741/inventories/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo
