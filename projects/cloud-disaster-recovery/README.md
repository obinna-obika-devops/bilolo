# Cloud Disaster Recovery

A practical DR plan that connects business impact to engineering controls.

| Tier | Example RTO | Example RPO | Strategy |
|---|---:|---:|---|
| Critical | 1 hour | 15 minutes | multi-AZ + cross-region recovery |
| Standard | 4 hours | 1 hour | automated backups + rebuild |
| Low | 24 hours | 24 hours | backup + documented manual restore |

## Recovery lifecycle

`backup → verify → detect incident → declare → restore infrastructure → restore data → validate → communicate → postmortem`

Recovery is not considered complete until restore tests prove the documented RTO/RPO assumptions.
