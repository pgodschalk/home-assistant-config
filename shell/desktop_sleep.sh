#!/bin/bash

jwt=$(curl -s -X POST ://upsnap-address/api/collections/_superusers/auth-with-password \
  -H "Content-Type: application/json" \
  -d '{"identity": "<upsnap-user-email>", "password": "<upsnap-password>"}' | \
  jq -r '.token');

curl -s -X GET ://upsnap-address/api/upsnap/sleep/<upsnap-device-id> -H "Authorization: Bearer $jwt"
