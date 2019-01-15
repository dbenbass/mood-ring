curl --include --request PATCH "http://localhost:4741/moods/" \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    # delete this header if necessary
    --data '{
        "mood": {
          "level": "'"${LEVEL}"'"
        }
    }'
