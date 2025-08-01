#!/bin/bash

response=$(curl --silent /dev/null http://127.0.0.1:8081/v2/search/too_complex_he_responds)
echo "Searched 'too complex he responds', and it returned \"$response\""

search_result=$(echo $response|grep 15|grep true)
if [ -z $search_result ]; then
  echo "Search result failed validation"
  exit 1
else
  echo "Search result validated. Yee-haw!"
fi