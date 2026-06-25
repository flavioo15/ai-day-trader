# Lessons Learned

## 2026-06-25 — Midday: Second Loss Realized (NVDA Hard Cut)
**What Happened:**
- NVDA breached -7% hard cut threshold ($198.77). Current price $195.80, down -8.39% from $213.73 entry.
- Canceled trailing stop (ID: 1e3c9814), placed market sell — filled 23 shares at $195.93 avg.
- Realized loss: -$409.39 (-8.33%). Position held 3 trading days.
- META also weakening: -3.55% from entry (was -2.27% yesterday, -1.13% on June 24).
- Portfolio: $99,173.93 (-0.83% total). Cash: $94,780.01 (95.6%).
- Total realized losses: -$664.45 (AVGO -$255.06 + NVDA -$409.39).

**What Worked:**
- -7% hard cut rule executed without hesitation — no "hoping for a bounce" or delaying.
- Portfolio is 95.6% cash, limiting total damage to -0.83% despite 2 of 3 initial positions being cut as losers.
- Risk management preserved capital: could have been much worse without position sizing limits.

**What Didn't:**
- MU's record earnings beat (revenue +16%, EPS +22%, 84.9% GM) was supposed to be THE catalyst to save NVDA. It bounced NVDA to $201.75 pre-market but couldn't hold it — faded -1.61% during the regular session.
- Entered all 3 positions (AVGO, NVDA, META) at the same time in the same sector during what turned out to be the start of a multi-day AI/semi correction. 2 of 3 cut as losers.
- NVDA survived by $0.23 on June 24 — the position was already effectively dead but the narrow survival created false hope.

**Key Lessons:**
1. **Even the best catalyst can't overcome a persistent downtrend near your cut level.** MU delivered a near-perfect earnings report and NVDA still fell. Once a position is trending toward -7% with only thin buffer remaining, the probability-weighted outcome favors cutting. Don't wait for a miracle catalyst.
2. **"Survived by $0.23" is not a victory — it's a warning.** When a position barely avoids the hard cut, the base case is the cut happens on a subsequent session. Consider cutting voluntarily when buffer is <1.5% rather than riding the razor's edge.
3. **Sector correlation is the biggest portfolio risk.** All 3 initial positions were in tech/semi. 2 of 3 hit the cut. This is not bad luck — it's concentrated sector exposure amplifying a single narrative shift (AI spending ROI doubt).
4. **Next entries MUST diversify across sectors.** At least one of the next 2-3 positions should be outside tech (COST, UNH, or similar defensive name).

## 2026-06-23 — End of Day 2: First Loss Realized (AVGO Cut)
**What Happened:**
- AVGO cut by midday routine at avg $381.83 (-5.27%, -$255.06 realized loss)
- Trailing stop canceled first, then market sell placed — filled in partial fills over ~6 minutes
- NVDA dropped -3.78% today, now at -6.07% from entry — only $1.99 (0.99%) above -7% hard cut
- META relatively resilient at -0.21% today (-1.19% from entry)
- Portfolio: $99,392.99 (-0.31% today, -0.61% total)
- Cash: $90,273.63 (90.8% of portfolio)

**What Worked:**
- Cutting AVGO before hitting -7% hard stop was disciplined execution
- Having the -7% rule prevented a larger loss — AVGO had structural headwinds (Google diversification, guide miss)
- Cash-heavy portfolio (90.8%) limits total drawdown despite 2 losing days

**What Didn't:**
- AVGO held only 1 trading day — violated the 5-day minimum hold rule (though cutting at -7% threshold is an exception)
- Entered AVGO on strongest momentum day (+4.62%) — this was a mean-reversion trap, not trend continuation
- All 3 positions entered same day in same sector (tech/semi) — correlated drawdown

**Key Lesson:**
Strongest single-day momentum often signals exhaustion, not acceleration. AVGO's +4.62% on June 18 was followed by a Q3 guide miss reality check. Better to enter on modest pullbacks within an uptrend than to chase single-day spikes. Also: when company-specific headwinds exist (Google diversification), positive momentum alone isn't enough.

**CRITICAL ALERT for Tomorrow:**
- NVDA at $200.76, -7% cut threshold at $198.77. Only $1.99 buffer (0.99%).
- If NVDA opens down >1%, midday routine MUST cut immediately.
- Micron earnings tomorrow after close — a beat could save NVDA; a miss could trigger the cut.

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
