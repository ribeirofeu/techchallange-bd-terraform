# RDS with Terraform Cloud

* This repository provides an AWS RDS instance configured for MySQL, two security groups are also created in the default VPC..
* RDS is being made available in **_Northern Virginia_** (us-east-1), if you want to change it you will need to change it in Variables in Terraform Cloud as well as the Database settings.

 ## Tasks triggered at the time of the pull request:
  * Format;
  * Init;
  * Validate;
  * Plan.

```
Terraform Format and Style 🖌success
Terraform Initialization ⚙️success
Terraform Validation 🤖success
Terraform Plan 📖success
Show Plan
Pushed by: @RicardoAlmeida7, Action: pull_request
```
 
 ## Tasks triggered when merging with the main branch:
  * Apply.
```
Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
Outputs:
rds_endpoint = "**************.us-east-1.rds.amazonaws.com"
```