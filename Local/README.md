# Terraform EC2 Deployment

## Overview

This project provisions an Amazon EC2 instance using Terraform.

The Terraform state is stored remotely in an Amazon S3 bucket, and state locking is handled by Amazon DynamoDB.

---

## Resources Created

- Amazon EC2 Instance

---

## Remote Backend

Terraform backend configuration:

- Amazon S3
- Amazon DynamoDB

---

## Files

- provider.tf
- versions.tf
- backend.tf
- variables.tf
- terraform.tfvars.example
- main.tf
- outputs.tf

---

## Prerequisites

- AWS Account
- AWS CLI Configured
- Terraform

---

## Commands

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Preview changes

```bash
terraform plan
```

Create infrastructure

```bash
terraform apply
```

Destroy infrastructure

```bash
terraform destroy
```

---

## Outputs

- EC2 Instance ID
- Public IP Address
