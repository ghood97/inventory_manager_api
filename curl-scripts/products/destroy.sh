# Ex: ID=idgoeshere TOKEN=tokengoeshere sh curl-scripts/examples/destroy.sh

curl "https://afternoon-sierra-41113.herokuapp.com/products/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \

echo
