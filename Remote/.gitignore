# Terraform AWS Remote Backend

This project demonstrates how to create a remote backend for Terraform using AWS.

## Project Overview

The project provisions:

- Amazon S3 Bucket for storing the Terraform state file
- Amazon DynamoDB Table for state locking
- Server-side encryption for the S3 bucket
- Bucket versioning to protect the state file

This remote backend can be used by other Terraform projects to securely store the Terraform state.

---

## Architecture

```
Terraform
    │
    ├──────────────► S3 Bucket
    │                 │
    │                 └── terraform.tfstate
    │
    └──────────────► DynamoDB
                      │
                      └── State Lock
```

---

## Project Structure

```
remote/
│
├── provider.tf
├── versions.tf
├── variables.tf
├── terraform.tfvars.example
├── main.tf
├── outputs.tf
├── .gitignore
└── README.md
```

---

## Prerequisites

- AWS Account
- AWS CLI configured
- Terraform v1.5 or later

---

## Variables

| Variable | Description |
|----------|-------------|
| aws_region | AWS Region |
| bucket_name | Name of the S3 Bucket |
| dynamodb_table_name | Name of the DynamoDB Table |

---

## Usage

Initialize Terraform

```bash
terraform init
```

Preview the execution plan

```bash
terraform plan
```

Create resources

```bash
terraform apply
```

Destroy resources

```bash
terraform destroy
```

---

## Resources Created

- Amazon S3 Bucket
- S3 Bucket Versioning
- Server-side Encryption
- Amazon DynamoDB Table

---

## Outputs

- S3 Bucket Name
- DynamoDB Table Name

---

## Notes

- The S3 bucket name must be globally unique.
- Do not commit `terraform.tfvars` or Terraform state files to GitHub.
- Commit `terraform.tfvars.example` instead.

---

## Author

Created as a beginner Terraform project for learning Remote Backend configuration.
