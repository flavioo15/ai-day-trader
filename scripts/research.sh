#!/usr/bin/env bash
set -euo pipefail

API_KEY="${FREEMODEL_API_KEY:?FREEMODEL_API_KEY not set}"
QUERY="${1:?Usage: bash research.sh \"<query>\"}"

RESPONSE=$(curl -s -X POST "https://api.freemodel.dev/v1/chat/completions" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d "$(cat <<EOF
{
  "model": "gpt-4o-mini",
  "messages": [
    {
      "role": "system",
      "content": "You are a financial research assistant. Provide specific data, numbers, dates, and sources. Focus on actionable market intelligence: catalysts, earnings, sector trends, macro events. Be concise but thorough."
    },
    {
      "role": "user",
      "content": $(printf '%s' "$QUERY" | jq -Rs .)
    }
  ]
}
EOF
)")

echo "$RESPONSE" | jq -r '.choices[0].message.content // "Error: no response content"'
