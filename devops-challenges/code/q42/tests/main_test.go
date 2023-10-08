package test

import (
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformWithTerratest(t *testing.T) {
	t.Parallel()

	options := &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		TerraformDir: "../terraform",

		// Variables to pass to our Terraform code using VAR=value environment variables
		EnvVars: map[string]string{
			"AWS_DEFAULT_REGION": "us-east-1",
		},
	}

	defer terraform.Destroy(t, options)
	terraform.InitAndApply(t, options)

	// Validate your code works as expected
	instanceID := terraform.Output(t, options, "instance_id")
	if strings.HasPrefix(instanceID, "i-") != true {
		t.Fatalf("Instance ID not found")
	}
}
