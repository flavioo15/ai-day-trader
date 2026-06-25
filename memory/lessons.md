# Lessons Learned

## 2026-06-25 — End of Day 4: NVDA Cut, Portfolio Down to 1 Position

**What Happened:**
- NVDA cut by midday routine at avg $195.93 (-8.33%, -$409.40 realized loss)
- NVDA trailing stop canceled, market sell placed — filled at 12:05 PM ET
- NVDA closed even lower at $194.52, confirming the cut was correct
- META dropped -2.05% today to $546.24 (-4.07% from entry)
- Portfolio: $99,150.81 (-0.16% today, -0.85% total)
- Cash: $94,780.01 (95.6% of portfolio)
- Only 1 position remains (META)

**What Worked:**
- The -7% hard cut rule continues to protect against larger losses. NVDA fell to $194.52 after our $195.93 exit — would have been -8.99% without the cut
- Cash-heavy positioning (95.6%) means the portfolio is barely down despite 2 losing trades
- Disciplined execution — no emotional holding of a losing position

**What Didn't:**
- NVDA was supposed to benefit from MU's record earnings beat. Pre-market showed a bounce to $201.75 (+1.38%), but it completely reversed and fell through the hard stop
- The MU → NVDA sympathy trade thesis was wrong. MU's beat benefited MU (+13% AH) and direct memory peers (QCOM +12.7%, WDC +10.2%) far more than NVDA
- Our entry at $213.73 was at a local high — NVDA has now fallen -8.99% from that level
- 2 of 3 initial positions have been cut for losses. Only META survives, and it's at -4.07%

**Key Lessons:**
1. **Sector catalysts don't lift all boats equally.** MU's record beat validated AI memory demand but didn't translate to GPU demand validation. Each company faces its own supply/demand dynamics — don't assume one company's results automatically help another.
2. **Relief bounces after steep declines often fail.** NVDA bounced from $199.00 to $201.75 pre-market on MU news, but couldn't sustain it. Pre-market moves on sympathy plays are unreliable.
3. **All 3 initial trades entered on the same day and same thesis were losers.** This confirms the June 22 lesson: stagger entries AND diversify theses. Correlated bets amplify drawdowns.
4. **The -7% hard cut is doing its job.** Both AVGO and NVDA continued falling after being cut. The rule is mechanical but effective.

**META Watch:**
- META at -4.07% from entry, buffer to -7% cut ($529.58) is $16.66 (3.14%)
- Not yet alarming but the trend is steadily negative: -0.73% → -1.13% → -2.27% → -4.07%
- If trend continues, META could hit -7% by early next week
- META's trailing stop at $514.98 (10% from hwm $572.20) provides a wider safety net

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

## 2026-06-21 — API Access Restored
**What Happened:**
- Alpaca API connectivity confirmed working. Account data fetched successfully.
- Network egress issue from 2026-06-20 appears resolved.

## 2026-06-20 — Network Egress Blocking API Access
**What Happened:**
- End-of-day routine could not reach `paper-api.alpaca.markets` or `api.telegram.org` — both blocked by the cloud environment's network egress policy.
- No live account data could be fetched and no Telegram notification could be sent.

**Resolution:** Fixed by 2026-06-21 — APIs now reachable.
