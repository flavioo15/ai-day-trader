# Lessons Learned

## 2026-06-20 — Inaugural Week Review
**What Happened:**
- Account created on Saturday June 20. No trading days were available this week.
- Portfolio sat in 100% cash while SPY gained +0.69%.

**What Worked:**
- Alpaca API is now accessible — can fetch account data, positions, and orders.
- Market data available via IEX feed (free tier).
- Research script operational (though model lacks real-time June 2026 data).

**What Didn't:**
- 100% cash position = guaranteed underperformance in a rising market.
- The `get_bars` command in trade.sh has a bug (uses `local` outside a function) — need to use direct curl or fix the script.
- Research model (freemodel.dev) doesn't have live June 2026 market data, limiting real-time research capabilities.
- Previous sessions couldn't reach APIs due to network egress policy — now resolved.

**Action Items:**
- Deploy capital ASAP on next trading day (Monday June 22).
- Fix the `get_bars` bug in trade.sh.
- Develop a workflow that compensates for the research model's lack of real-time data (use Alpaca price bars + general sector analysis).

## 2026-06-20 — Technical: Alpaca Data API
**Key Finding:**
- Free-tier Alpaca accounts must use `feed=iex` parameter when querying market data bars.
- Without it, the API returns: "subscription does not permit querying recent SIP data".
- Direct curl to `data.alpaca.markets` works; the trade.sh script uses `paper-api.alpaca.markets` which is wrong for market data.

**Rule Change:**
- For market data queries, use `https://data.alpaca.markets` endpoint with `&feed=iex`.
- For trading/account queries, continue using `https://paper-api.alpaca.markets`.
