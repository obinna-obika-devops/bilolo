# Bilolo — Cloud & Infrastructure Engineering Portfolio

**Cloud & Infrastructure Engineer | DevOps | SRE | Platform Engineering**

This repository is a production-minded engineering portfolio built as one coherent miniature cloud platform. The projects demonstrate infrastructure as code, Kubernetes platform engineering, CI/CD, observability, security, disaster recovery, and resilience engineering.

## Engineering stack

- **Cloud:** AWS
- **Infrastructure:** Terraform
- **Containers:** Docker, Kubernetes, Helm
- **CI/CD:** GitHub Actions
- **Observability:** Prometheus, Grafana, OpenTelemetry
- **Security:** Trivy, Checkov, Gitleaks, least-privilege IAM, SBOM workflows
- **Reliability:** SLIs/SLOs, error budgets, backup/restore, chaos experiments
- **Automation:** Bash, Make, YAML

## Portfolio architecture

```text
                         ┌──────────────────────────────┐
                         │        GitHub Actions         │
                         │ test → scan → build → deploy  │
                         └──────────────┬───────────────┘
                                        │
                              immutable container image
                                        │
                         ┌──────────────▼───────────────┐
                         │       AWS / Kubernetes        │
                         │ ingress • workloads • RBAC    │
                         │ network policy • autoscaling │
                         └──────────────┬───────────────┘
                                        │
                  ┌─────────────────────┼─────────────────────┐
                  │                     │                     │
          ┌───────▼───────┐     ┌───────▼───────┐     ┌──────▼──────┐
          │ Observability  │     │    Security   │     │ Resilience  │
          │ metrics/logs/  │     │ SAST/IaC/     │     │ backup/DR/   │
          │ traces + SLOs  │     │ image/SBOM    │     │ chaos tests  │
          └───────────────┘     └───────────────┘     └─────────────┘

             Terraform provides the reusable infrastructure layer
```

## Projects

| Project | Demonstrates |
|---|---|
| [`aws-production-platform`](projects/aws-production-platform/) | AWS networking, IAM, load balancing, managed data, monitoring, Terraform |
| [`kubernetes-internal-developer-platform`](projects/kubernetes-internal-developer-platform/) | RBAC, quotas, NetworkPolicies, Helm, probes, autoscaling, platform guardrails |
| [`cloud-native-cicd-platform`](projects/cloud-native-cicd-platform/) | testing, security gates, immutable images, deployment, smoke tests, rollback |
| [`sre-observability-platform`](projects/sre-observability-platform/) | Prometheus, Grafana, OpenTelemetry, SLIs/SLOs, error budgets, alerting |
| [`terraform-infrastructure-modules`](projects/terraform-infrastructure-modules/) | reusable modules, contracts, secure defaults, validation |
| [`devsecops-cloud-platform`](projects/devsecops-cloud-platform/) | supply-chain security, IaC scanning, secret detection, SBOM, threat modeling |
| [`cloud-disaster-recovery`](projects/cloud-disaster-recovery/) | RTO/RPO, backup/restore, recovery runbooks, restore testing |
| [`chaos-engineering-lab`](projects/chaos-engineering-lab/) | failure hypotheses, steady-state checks, controlled experiments, remediation |

## How to evaluate this portfolio

1. Start with the AWS platform to see the infrastructure foundation.
2. Review the Kubernetes platform to see how application teams consume that foundation.
3. Follow the CI/CD project to see how changes move safely from commit to deployment.
4. Review observability and SRE artifacts for operational maturity.
5. Review DevSecOps, DR, and chaos engineering for production-readiness beyond deployment.

## Engineering principles

- Everything important is reproducible from code.
- Secure defaults are preferred over after-the-fact hardening.
- Production changes should be observable and reversible.
- Reliability is expressed with measurable SLIs/SLOs rather than vague availability goals.
- CI/CD is a control plane, not just a build script.
- Examples never contain real credentials, tokens, or cloud secrets.
- Infrastructure is designed to be validated locally before deployment.

## Local validation

Most projects expose `make` targets for formatting and validation. The portfolio is intentionally safe to inspect without an AWS account; deployment-specific values are supplied through variables or example configuration.

```bash
make validate
```

## Disclaimer

These repositories are portfolio implementations and reference architectures. Unless explicitly stated in a project README, no production cloud resources are claimed to be running.
