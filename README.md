# Terraform AWS Remote Backend & EC2 Deployment

## Overview

This repository demonstrates how to provision AWS infrastructure using Terraform with a remote backend.

The project is divided into two parts.

### 1. Remote Backend

Creates:

- Amazon S3 Bucket
- Amazon DynamoDB Table

These resources are used to store and lock the Terraform state.

### 2. EC2 Deployment

Creates:

- Amazon EC2 Instance

The Terraform state for this deployment is stored in the remote backend created above.

---

## Project Structure

```
terraform-aws-ec2-remote-state/

│
├── remote/
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── terraform.tfvars.example
│   ├── main.tf
│   ├── outputs.tf
│   └── README.md
│
├── local/
│   ├── provider.tf
│   ├── versions.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── terraform.tfvars.example
│   ├── main.tf
│   ├── outputs.tf
│   └── README.md
│
├── .gitignore
└── README.md
```

---

## Architecture

```
                Terraform

                     │

        ┌────────────┴────────────┐

        │                         │

     Remote Backend           EC2 Project

        │                         │

   ┌───────────┐            ┌───────────┐

   │    S3     │            │    EC2    │

   └───────────┘            └───────────┘

        │

        ▼

 Terraform State

        │

        ▼

 DynamoDB Lock Table
```

---

## Workflow

Step 1

Deploy the Remote Backend.

```
cd remote
terraform init
terraform apply
```

Step 2

Deploy the EC2 instance.

```
cd ../local
terraform init
terraform apply
```

---

## AWS Services Used

- Amazon EC2
- Amazon S3
- Amazon DynamoDB

---

## Terraform Concepts Covered

- AWS Provider
- Variables
- Outputs
- Remote Backend
- State Locking
- Resource Creation
- Terraform State Management

---

## Author

Terraform Beginner Project
