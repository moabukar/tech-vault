# Immutable AMI with Packer Challenge

## Steps to create AMI

1. Run `packer validate packer.json` to validate the Packer configuration.
2. Run `packer build packer.json` to build the AMI.

## Steps to deploy EC2 instance

1. Initialize Terraform with `terraform init`.
2. Apply the configuration with `terraform apply`.

Replace the `ami` field in `main.tf` with your own AMI ID.

- To run Packer and Terraform, the candidate will need to set up their AWS credentials. They can then validate the Packer file with packer validate and build the AMI with packer build. To deploy the EC2 instance, they'll run terraform init followed by terraform apply.
