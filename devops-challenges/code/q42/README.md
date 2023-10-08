# Terraform with Terratest Example Project

This repository demonstrates how to set up an AWS instance using Terraform and how to test it using Terratest.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 0.14
- [Go](https://golang.org/dl/) >= 1.15
- [AWS CLI](https://aws.amazon.com/cli/) configured with Admin-level credentials
- [GitHub Account](https://github.com/) (Optional, if you wish to set up CI/CD)

## Project Structure

```bash
.
├── .github
│   └── workflows
│       └── ci.yml
├── Makefile
├── README.md
├── terraform
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── tests
    ├── go.mod
    └── main_test.go
```


## How to Run

### Terraform Setup

1. Navigate to the `terraform` directory:

```bash
cd terraform
```

2. Initialize Terraform:

```bash
terraform init
```

3. Apply the Terraform code:

```bash
terraform apply
```

### Test Setup

1. Navigate to the `tests` directory:

```bash
cd tests
```

2. Run the tests:

```bash
go test
```

Or you can use the provided Makefile to run the tests:

```bash
make test
```
