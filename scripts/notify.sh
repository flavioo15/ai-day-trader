#!/usr/bin/env bash
set -euo pipefail

BOT_TOKEN="${TELEGRAM_BOT_TOKEN:?TELEGRAM_BOT_TOKEN not set}"
CHAT_ID="${TELEGRAM_CHAT_ID:?TELEGRAM_CHAT_ID not set}"
MESSAGE="${1:?Usage: bash notify.sh \"<message>\"}"

# Telegram has a 4096 char limit per message — split if needed
if [ ${#MESSAGE} -le 4096 ]; then
  curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
    -H "Content-Type: application/json" \
    -d "$(cat <<EOF
{
  "chat_id": "$CHAT_ID",
  "text": $(printf '%s' "$MESSAGE" | jq -Rs .),
  "parse_mode": "Markdown"
}
EOF
)" | jq -r '.ok // "Error sending message"'
else
  # Split into chunks of 4096 chars
  while [ -n "$MESSAGE" ]; do
    CHUNK="${MESSAGE:0:4096}"
    MESSAGE="${MESSAGE:4096}"
    curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
      -H "Content-Type: application/json" \
      -d "$(cat <<EOF
{
  "chat_id": "$CHAT_ID",
  "text": $(printf '%s' "$CHUNK" | jq -Rs .),
  "parse_mode": "Markdown"
}
EOF
)" | jq -r '.ok // "Error sending message"'
    sleep 1
  done
fi
