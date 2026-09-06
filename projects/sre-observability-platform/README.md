# SRE Observability Platform

Observability is treated as part of the service contract, not an afterthought.

## Signals

- **Metrics:** Prometheus-compatible instrumentation and alert rules.
- **Logs:** structured application logs with correlation identifiers.
- **Traces:** OpenTelemetry-ready traces for request flows.
- **Dashboards:** service health, latency, traffic, errors, and saturation.

## Example SLO

For a customer-facing API, a starting target might be **99.9% successful requests over 30 days**, with latency and availability SLIs defined explicitly. Error-budget policy determines when risky changes pause.

## Operational loop

`measure → alert → diagnose → mitigate → learn → automate`
