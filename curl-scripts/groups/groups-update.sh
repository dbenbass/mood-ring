curl --include --request PATCH "http://localhost:4741/groups/" \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    # delete this header if necessary
    --data '{
        "group": {
          "name": "'"${NAME}"'",
          "numberofparticipants": "'"${NUMBEROFPARTICIPANTS}"'",
          "location": "'"${LOCATION}"'",
          "created_at": "'"${CREATED_AT}"'",
          "updated_at": "'"${UPDATED_AT}"'",
        }
    }'
