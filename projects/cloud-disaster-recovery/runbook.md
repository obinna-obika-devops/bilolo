# DR Restore Runbook

## Objective

Restore the critical service within the documented RTO while keeping data loss within the documented RPO.

## Procedure

1. Declare the incident and freeze non-essential changes.
2. Identify the last verified backup inside the RPO window.
3. Rebuild infrastructure from Terraform in the recovery environment.
4. Restore the database from the selected backup.
5. Deploy the known-good application artifact.
6. Run health checks and smoke tests.
7. Validate data integrity and critical business flows.
8. Reopen traffic gradually and monitor SLOs.
9. Record actual RTO/RPO and create follow-up work.

## Test cadence

Run a restore exercise at least quarterly and treat failed assumptions as engineering defects, not documentation issues.
