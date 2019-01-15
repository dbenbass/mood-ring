#!/bin/bash

curl --include --request POST "https://wdi-library-api.herokuapp.com/moods/" \
  --header "Content-type: application/json" \
  --data '{
    "mood": {
      "level": "'"${LEVEL}"'",
    }
  }'

echo
