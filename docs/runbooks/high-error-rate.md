# High Error Rate Runbook

## Trigger

`HighErrorRate` fires when the 5-minute server-error ratio exceeds 1% for 10 minutes.

## Triage

1. Confirm whether the alert is isolated to one service or global.
2. Check deployment history and recent configuration changes.
3. Compare request rate, latency, saturation, and dependency errors.
4. Inspect application logs using the request correlation ID.

## Mitigation

- Roll back the latest deployment if it correlates with the incident.
- Disable a failing optional dependency path when a safe feature flag exists.
- Scale capacity only when saturation is the limiting factor.

## Recovery

Confirm error rate returns to baseline, verify SLO impact, then document root cause and prevention work.
