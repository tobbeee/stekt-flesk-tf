# stekt-flesk-keycloak-tf
To run this code, you need to have [Terraform](https://www.terraform.io/downloads.html) installed.

## How to run
1. Clone the repository.
2. Navigate to the project directory:
   ```
   cd stekt-flesk-tf
   ```
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Review the execution plan:
   ```
   terraform plan
   ```
5. Apply the configuration:
   ```
   terraform apply
   ```
6. To destroy the resources created by this configuration, run:
   ```
   terraform destroy
   ```

## How to access
Currently, the realm is set to 'demo-realm' within this configuration. To access it, go to:
   ```
    http://localhost:8082/realms/demo-realm/account
   ```
Then, you can log in with the credentials stated in this project (users.tf file).
