#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${ALPACA_BASE_URL:-https://paper-api.alpaca.markets}"
API_KEY="${ALPACA_API_KEY:?ALPACA_API_KEY not set}"
API_SECRET="${ALPACA_API_SECRET:?ALPACA_API_SECRET not set}"

alpaca() {
  local method="$1" endpoint="$2"
  shift 2
  curl -s -X "$method" \
    -H "APCA-API-KEY-ID: $API_KEY" \
    -H "APCA-API-SECRET-KEY: $API_SECRET" \
    -H "Content-Type: application/json" \
    "$@" \
    "${BASE_URL}${endpoint}"
}

case "${1:-help}" in

  get_account)
    alpaca GET /v2/account
    ;;

  get_positions)
    alpaca GET /v2/positions
    ;;

  get_position)
    alpaca GET "/v2/positions/${2:?symbol required}"
    ;;

  place_order)
    # Usage: place_order <symbol> <qty> <side> <type> <time_in_force>
    alpaca POST /v2/orders -d "$(cat <<EOF
{
  "symbol": "${2:?symbol required}",
  "qty": "${3:?qty required}",
  "side": "${4:?side required (buy/sell)}",
  "type": "${5:-market}",
  "time_in_force": "${6:-day}"
}
EOF
)"
    ;;

  place_trailing_stop)
    # Usage: place_trailing_stop <symbol> <qty> <side> <trail_percent>
    alpaca POST /v2/orders -d "$(cat <<EOF
{
  "symbol": "${2:?symbol required}",
  "qty": "${3:?qty required}",
  "side": "${4:-sell}",
  "type": "trailing_stop",
  "trail_percent": "${5:-10}",
  "time_in_force": "gtc"
}
EOF
)"
    ;;

  get_orders)
    alpaca GET "/v2/orders?status=${2:-open}&limit=${3:-50}"
    ;;

  cancel_order)
    alpaca DELETE "/v2/orders/${2:?order_id required}"
    ;;

  cancel_all_orders)
    alpaca DELETE /v2/orders
    ;;

  get_bars)
    # Usage: get_bars <symbol> <timeframe> <start> <end>
    _sym="${2:?symbol required}"
    _tf="${3:-1Day}"
    _start="${4:-$(date -d '7 days ago' +%Y-%m-%d 2>/dev/null || date -v-7d +%Y-%m-%d)}"
    _end="${5:-$(date +%Y-%m-%d)}"
    curl -s -X GET \
      -H "APCA-API-KEY-ID: $API_KEY" \
      -H "APCA-API-SECRET-KEY: $API_SECRET" \
      "https://data.alpaca.markets/v2/stocks/${_sym}/bars?timeframe=${_tf}&start=${_start}&end=${_end}&feed=iex"
    ;;

  get_snapshot)
    alpaca GET "/v2/stocks/${2:?symbol required}/snapshot"
    ;;

  help)
    echo "Usage: bash trade.sh <command> [args]"
    echo ""
    echo "Commands:"
    echo "  get_account                                    Get account info"
    echo "  get_positions                                  List all positions"
    echo "  get_position <symbol>                          Get single position"
    echo "  place_order <symbol> <qty> <side> [type] [tif] Place an order"
    echo "  place_trailing_stop <sym> <qty> [side] [pct]   Place trailing stop"
    echo "  get_orders [status] [limit]                    List orders"
    echo "  cancel_order <order_id>                        Cancel an order"
    echo "  cancel_all_orders                              Cancel all orders"
    echo "  get_bars <symbol> [timeframe] [start] [end]    Get price bars"
    echo "  get_snapshot <symbol>                          Get latest snapshot"
    ;;

  *)
    echo "Unknown command: $1. Run 'bash trade.sh help' for usage."
    exit 1
    ;;
esac
