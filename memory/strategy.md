# Trading Strategy

**Last Updated:** 2026-07-02 (market open routine — COST order placed, last trading day before July 4 holiday)

## Current Market Thesis
Q3 2026 off to a strong start (Q2: S&P +14%, Nasdaq +20%). June Jobs Report (July 2, 8:30 AM ET) came in benign: SPY pre-market +0.36% post-report, MU recovered +3.18%, consistent with payrolls well below 200K. COST gate opened.

META's AI cloud business (July 1 announcement) is a major sustained catalyst. MU recovered from the DRAM-lawsuit panic that pushed it to $1,008 pre-market yesterday — now at $1,065, well above the $1,004.05 hard cut. HBM thesis intact.

**COST added:** Non-tech diversification complete. Portfolio now has 3 sectors: mega-cap platform tech (META), memory semi (MU), consumer staples (COST).

**Key risks:**
1. COST fill uncertainty — market order, fills at 9:30 AM ET open (midday routine to confirm and place 10% trailing stop)
2. GOOGL still above $335-345 — no entry yet (1 Week 2 slot remains)
3. Markets CLOSED Friday July 4 — today is the last trading day this week
4. MU: DRAM lawsuit overhang remains, but stop protects downside. Buffer to cut now $61.16 (5.74%)

## Sector Preferences
- **Overweight:** Consumer Staples (COST — new position, best entry price to date $920-935); Mega-cap AI platforms (META — +6.02% from entry, new AI cloud catalyst)
- **Neutral:** Memory/Semi (MU — HBM thesis intact, DRAM lawsuit = risk, recovery today +3.18%)
- **Underweight:** GPU/Infrastructure Semis (NVDA/AVGO — prior losses), GOOGL (above target entry zone)

## Current Positioning (Market Open July 2)
- 2 confirmed positions: META + MU (stops active)
- 1 PENDING: COST (order c22579e5, fills at 9:30 AM)
- META: 8 shares, entry $569.44, current $603.75 (+6.02%), **7% trailing stop** (ID: c760484c, stop $584.30, hwm $628.28)
- MU: 4 shares, entry $1,079.62, current $1,065.21 (-1.34%), **10% trailing stop** (ID: 700011ff, stop $959.93, hwm $1,066.59)
- COST: 5 shares, estimated fill $920-935, **10% trailing stop PENDING** (midday routine to place after fill)
- After COST fill: ~$85,840 cash, ~14% deployed
- Portfolio value: $99,568.50 (pre-COST fill)
- **Position limit: 2/3 used (Week 2)**

## Week 2 Deployment — COMPLETED

### DONE:
1. ✅ **MU BUY** — 4 shares at $1,079.62 (2026-07-01). 10% trailing stop active (ID: 700011ff).
2. ✅ **META STOP TIGHTENED** — 7% trailing stop (ID: c760484c, stop $584.30, hwm $628.28).
3. ✅ **COST BUY ORDER PLACED** — 5 shares market buy (order c22579e5). Fills at 9:30 AM ET July 2. 10% trailing stop to be placed at midday after fill confirms.
4. ✅ **MU NOT CUT** — MU recovered to $1,065.21 (+3.18% today), buffer to -7% cut = $61.16 (5.74%). NO action needed.

### Midday Routine Actions Required (July 2):
1. **Confirm COST fill price** — check position via get_position COST
2. **Place 10% trailing stop on COST** — bash scripts/trade.sh place_trailing_stop COST 5 sell 10
3. **Update portfolio.md with actual COST fill price and stop ID**
4. **Monitor MU vs $1,004.05** — if at/below, cancel stop and sell immediately (still critical)
5. **Check META** — no action expected, just confirm stop intact

### META Management
- Entry: $569.44 | -7% cut: $529.58 | **7% trailing stop** (ID: c760484c, stop $584.30, hwm $628.28)
- Current: $603.75 (+6.02% from entry) — HEALTHY
- AI cloud business = major new long-term catalyst
- **No action needed.**

### MU Management
- Entry: $1,079.62 | -7% cut: **$1,004.05** | Current: $1,065.21 (-1.34%)
- Buffer: **$61.16 (5.74%)** — recovered from yesterday's $4.59 danger zone
- 10% trailing stop: $959.93 (hwm $1,066.59, ID: 700011ff)
- MU up +3.18% today — DRAM lawsuit panic is reversing
- **No cut needed. Hold.**

### COST Management (pending fill)
- Entry target: ~$920-935 (market order, fills at open)
- 5 shares × ~$924 = ~$4,620 (4.64% of portfolio) ✅
- 10% trailing stop to be placed immediately after fill confirmed (midday routine)
- Thesis: Bernstein H2 top pick, 18.8% upside to PT $1,099, defensive diversification

## Week 3 Preview (July 7+)
- 1 remaining position slot from Week 2
- GOOGL: Still above $335-345 pullback target — no entry until it dips
- Markets closed July 4 (Friday) — Week 3 starts Monday July 7
- Strategy reset: reassess MU stop (may need tightening if up >5%), monitor COST momentum

## Risk Appetite
**DEPLOYED.** Portfolio is now diversified across 3 sectors. Both stop orders are active. COST trailing stop to be placed at midday. With markets closed July 4, the long holiday weekend is a risk event — all stops are in place to protect against any adverse Monday opens.

## Signals Being Watched
- **COST fill price** — target $920-935. Midday to confirm.
- **MU vs $1,004.05** — hard cut threshold. Buffer $61.16. Keep monitoring.
- **META trailing stop at $584.30** (7% from hwm $628.28) — well away from current $603.75
- **Jobs Report actual number** — couldn't verify exact figure, but market reaction (SPY +0.36%) confirms benign print
- **GOOGL pullback to $335-345** — still not materialized; Week 3 watch

## Active Watchlist
| Stock | Last Known Price | Thesis | Action Trigger | Priority |
|-------|-----------------|--------|----------------|----------|
| COST | ~$924 (July 1) | H2 Bernstein top pick, 18.8% upside, special div speculation, defensive diversification | **ORDERED — fills at 9:30 AM ET** | **EXECUTING** |
| MU | $1,065.21 (today) | HBM supercycle intact. DRAM lawsuit = risk but stock recovering. | **Hold. Cut if at/below $1,004.05** | **HOLD / MONITOR** |
| META | $603.75 (today) | AI cloud business. +6.02% from entry. Strong. | Hold. No action. | **HOLD** |
| GOOGL | ~$353 (est.) | Dow inclusion, Berkshire stake, Cloud +32% YoY | Wait for pullback to $335–345. Not yet. | **WATCH — no entry** |
