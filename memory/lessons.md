# Lessons Learned

## 2026-06-20 — Network Egress Blocking API Access
**What Happened:**
- End-of-day routine could not reach `paper-api.alpaca.markets` or `api.telegram.org` — both blocked by the cloud environment's network egress policy.
- No live account data could be fetched and no Telegram notification could be sent.

**Action Required:**
- Add `paper-api.alpaca.markets` and `api.telegram.org` to the network egress allowlist in the Claude Code cloud environment settings.
- Until this is fixed, all Bull routines (trading, research notifications, EOD summaries) will fail.

<!-- Format for entries:
## YYYY-MM-DD — [What Happened]
**What Worked:**
- ...

**What Didn't:**
- ...

**Rule Change (if any):**
- ...
-->
