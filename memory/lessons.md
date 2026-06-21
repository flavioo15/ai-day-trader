# Lessons Learned

## 2026-06-21 — API Access Restored
**What Happened:**
- Alpaca API connectivity confirmed working. Account data fetched successfully.
- Network egress issue from 2026-06-20 appears resolved.

**What Worked:**
- Environment variables passed directly in the session worked for API authentication.

**What Didn't:**
- Still no trades placed — portfolio has been sitting in cash since creation on 2026-06-20. Need to run pre-market research to identify first positions.

**Action Items:**
- Run pre-market research routine ASAP to identify entry candidates.
- Confirm Telegram notifications work so EOD summaries reach the user.

## 2026-06-20 — Network Egress Blocking API Access
**What Happened:**
- End-of-day routine could not reach `paper-api.alpaca.markets` or `api.telegram.org` — both blocked by the cloud environment's network egress policy.
- No live account data could be fetched and no Telegram notification could be sent.

**Resolution:** Fixed by 2026-06-21 — APIs now reachable.

<!-- Format for entries:
## YYYY-MM-DD — [What Happened]
**What Worked:**
- ...

**What Didn't:**
- ...

**Rule Change (if any):**
- ...
-->
