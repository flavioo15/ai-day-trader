# Lessons Learned

## 2026-06-23 — AVGO Cut Confirmed + NVDA High Alert (Midday)
**What Happened:**
- AVGO sell order (placed pre-market at -6.93%) filled at open: avg $381.83, realized loss -$255.06 (-5.27% from $403.09 entry).
- NVDA dropped -3% today to $202.39 (-5.31% from entry). Only $3.62 above -7% hard cut at $198.77.
- META stable at $564.07 (-0.94%), healthiest position.
- Portfolio: $99,441.48 (-0.56% total). Cash: $90,274 (90.8%).

**What Worked:**
- Pre-market cut discipline limited AVGO loss to -5.27% realized (better than the -6.93% pre-market price — stock actually bounced slightly at open).
- Heavy cash allocation (90.8%) keeps portfolio-level damage minimal.
- Conservative position sizing means the -$255 AVGO loss is only -0.26% of total portfolio.

**What Didn't:**
- AVGO thesis was wrong in hindsight — +4.62% momentum on June 18 was a false signal in a declining sector.
- The 10% trailing stop ($357.98) was far below the -7% hard cut ($374.87) — the stop would never have enforced the rule. Need a mechanism to enforce -7% cut automatically.
- NVDA's trailing stop ($188.98) has the same gap — won't enforce -7% cut at $198.77.

**Key Lessons:**
1. **The 10% trailing stop and -7% hard cut create a gap.** For positions that never rally above entry, the trailing stop is too loose. Consider starting with 7% trailing stop and widening to 10% only after +5% gain, or placing a separate stop-loss at -7%.
2. **Momentum after a sector selloff can be a dead cat bounce.** Be skeptical of single-day signals in a declining sector.
3. **Cut discipline works.** -$255 is painful but manageable. Without the rule, AVGO could have been much worse.
4. **Pre-emptive cuts near threshold are smart** when trend is clearly against you and you can't monitor intraday.

---

## 2026-06-22 — End of Day 1 Recap
**What Happened:**
- First full trading day complete. All 3 positions (AVGO, NVDA, META) in the red.
- Portfolio closed at $99,747.43 (-$252.57, -0.25%)
- AVGO was the worst intraday performer (-4.08% from prev close), closing at $394.57
- META held up best (-0.73% from entry), NVDA middle (-2.38%)
- All 3 trailing stops remain active and untriggered

**What Worked:**
- Trailing stops placed at midday are functioning correctly with proper high-water marks
- Position sizing kept total risk manageable — only 14% deployed, portfolio only down 0.25%
- Conservative cash allocation (85.7%) limits downside exposure

**What Didn't:**
- All 3 picks went red on day 1 — bought into what turned out to be a tech selloff day
- AVGO dropped -4.08% intraday, suggesting Friday's +4.62% momentum was partially a false signal
- No way to know pre-open that Monday would sell off — but entering all 3 on same day concentrated timing risk

**Key Lesson:**
Staggering entries across 2-3 days would reduce timing risk. All 3 positions entered at once means all are exposed to the same daily market direction. Consider spacing entries in the future.

**Action Items:**
- Monitor AVGO closely — down -2.11% from entry, worst of the three
- Watch Micron earnings Wednesday (June 24) — key validation for semi thesis
- FedEx earnings Tuesday (June 23) — economic demand signals
- No trading action needed — all positions within normal range, no stops near trigger

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
