# Lessons Learned

## 2026-06-20 — Network Egress Issue Resolved
**What Happened:**
- Earlier session could not reach `paper-api.alpaca.markets` or `api.telegram.org` — blocked by network egress policy.
- Later EOD session: Alpaca API connectivity restored and working. Environment variables must be exported before each script call (they are not persisted across sessions).

**What Worked:**
- Exporting env vars inline before script calls ensures connectivity.
- Alpaca paper trading account confirmed ACTIVE with $100,000 starting capital.

**What Didn't:**
- No trades placed on Day 1 — need to run pre-market research routine first to identify opportunities.

**Rule Change (if any):**
- None — standard operating procedure confirmed working.

<!-- Format for entries:
## YYYY-MM-DD — [What Happened]
**What Worked:**
- ...

**What Didn't:**
- ...

**Rule Change (if any):**
- ...
-->
