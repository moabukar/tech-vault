# Solution to Q23 (OPA with TF)


opa-terraform-challenge/
│
├── policies/
│   └── s3.rego
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
└── README.md

## Running the Solution

- `export AWS_ACCESS_KEY_ID="anaccesskey"`'`
- `export AWS_SECRET_ACCESS_KEY="asecretkey"`

### Initiate Terraform:

- `cd terraform`
- `terraform init`

### Run OPA policy check:

- `opa eval --data ../policies/s3.rego --input main.tf "data.terraform.deny"`

You can generate terraform.json by running terraform plan --out=tfplan && terraform show -json tfplan > terraform.json.

### Run Terraform:

- `terraform apply``
You can automate the OPA check into your CI/CD pipeline to run before terraform apply.

