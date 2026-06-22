# Lessons Learned

## 2026-06-22 — First Fills & Trailing Stops Placed
**What Happened:**
- All 3 buy orders (AVGO, NVDA, META) filled at Monday open
- Fill prices were slightly better than Friday close estimates: AVGO $403.09 (est ~$411), NVDA $213.73 (est ~$210), META $569.44 (est ~$577)
- Placed 10% trailing stops on all 3 positions immediately at midday check
- All positions slightly red at midday — broad tech selling pressure today

**What Worked:**
- Market orders filled cleanly at open with reasonable prices
- AVGO and META actually filled below Friday's close — gap-down gave better entries
- Trailing stop placement went smoothly via place_trailing_stop command

**What Didn't:**
- Could not place stops at open (midday routine, not real-time) — ~6.5 hour gap without protection
- All 3 positions negative on day 1 — not ideal but within normal range

**Action Items:**
- Monitor AVGO closely — down -3.88% intraday, worst performer today
- Watch for Micron earnings Wednesday — key catalyst for semiconductor positions
- EOD check should verify trailing stop orders are still active

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
