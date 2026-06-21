# Lessons Learned

## 2026-06-21 — First Trades Placed
**What Happened:**
- Placed first 3 buy orders: AVGO (12 shares), NVDA (23 shares), META (8 shares)
- Orders accepted and queued for Monday June 22 market open
- Attempted to place trailing stops immediately but Alpaca rejects sell orders while buy orders are pending

**What Worked:**
- Using Alpaca snapshots API (data.alpaca.markets) to get real price data when bars endpoint returned "Not Found"
- Fixed get_bars script bug (`local` keyword used outside function)
- Momentum-based stock selection with fundamental quality filter

**What Didn't:**
- Trailing stops cannot be placed simultaneously with buy orders — must wait for fills
- Research API (Perplexity) couldn't provide live market data, only general frameworks
- Bars endpoint on paper-api base URL doesn't work — need data.alpaca.markets

**Action Items:**
- CRITICAL: Next routine MUST place 10% trailing stops on all 3 positions once filled
- Always use data.alpaca.markets for market data, not the paper-api URL
- Consider using snapshot API for quick multi-stock price checks

## 2026-06-21 — API Access Restored
**What Happened:**
- Alpaca API connectivity confirmed working. Account data fetched successfully.
- Network egress issue from 2026-06-20 appears resolved.

**What Worked:**
- Environment variables passed directly in the session worked for API authentication.

**What Didn't:**
- Still no trades placed — portfolio has been sitting in cash since creation on 2026-06-20. Need to run pre-market research to identify first positions.

**Action Items:**
- [x] Run pre-market research routine ASAP to identify entry candidates — DONE
- [ ] Confirm Telegram notifications work so EOD summaries reach the user.

## 2026-06-20 — Network Egress Blocking API Access
**What Happened:**
- End-of-day routine could not reach `paper-api.alpaca.markets` or `api.telegram.org` — both blocked by the cloud environment's network egress policy.
- No live account data could be fetched and no Telegram notification could be sent.

**Resolution:** Fixed by 2026-06-21 — APIs now reachable.
