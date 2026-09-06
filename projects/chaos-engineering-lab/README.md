# Chaos Engineering Lab

Controlled failure experiments validate whether the platform behaves as designed.

## Experiment template

- **Hypothesis:** what should remain true?
- **Steady state:** which SLIs prove normal behavior?
- **Blast radius:** smallest safe scope.
- **Fault:** what dependency or resource is intentionally degraded?
- **Observation:** what happened and which alerts fired?
- **Abort condition:** when do we stop the experiment?
- **Remediation:** what automation or design change follows?

## Planned experiments

1. Terminate one application instance.
2. Inject dependency latency.
3. Return controlled dependency errors.
4. Exhaust a bounded resource quota.
5. Simulate network isolation in a non-production namespace.

No destructive experiment should be executed against production without an approved change window and rollback plan.
