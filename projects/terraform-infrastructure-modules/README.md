# Terraform Infrastructure Modules

Reusable Terraform components are treated as products with interfaces: inputs, outputs, validation, secure defaults, and examples.

## Module contract

1. Keep provider configuration at the environment layer.
2. Expose stable outputs instead of leaking implementation details.
3. Make insecure behavior opt-in and obvious.
4. Validate variable ranges and naming conventions.
5. Run formatting and validation in CI.

The AWS production platform consumes these patterns to demonstrate composition rather than one giant Terraform file.
