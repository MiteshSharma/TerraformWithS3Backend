# Terraform with S3 backend and dynamo DB locking

Terraform helps us build, evolve, and manage our infrastructure using its configuration files across multiple providers. When we are building infrastructure with terraform configuration, a state file gets generated in the local workspace directory named "terraform.tfstate". This state file contains information about the provisioned infrastructure which terraform is managing. Whenever we do changes in terraform configuration, Terraform automatically determines which part of your configuration is already deployed and which needs to be changed with help of state file. State helps provides immutability to terraform as it already knows if one resource is present and prevent it to be deployed again when the same configuration executes.

## Steps to run this code:

Step 1: Clone this repository

Step 2: Replace "ACCESS_KEY_HERE" with aws access key and "SECRET_KEY_HERE" with aws secret key. These keys can be generated from IAM module of aws.

Step 3: Go to s3 folder and execute terraform from below mentioned steps. This is going to create an S3 bucket which is used to store terraform state.

Step 4: Go to dynamoDB folder and execute terraform from below mentioned steps. This is going to create a dynamo DB table which is used for locking terraform configuration execution.

Step 5: Go back to the main folder and execute terraform to create EC2 instance with S3 as backend and DynamoDB as a locking mechanism.


Steps to execute any terraform code: 

Step 1: Run command "terraform init" to init configuration workspace

Step 2: Run command "terraform plan" to see output which is going to be executed.

Step 5: Run command "terraform apply" to actually create EC2 instance

Step 6: Run command "terraform destroy" to destroy created resources.