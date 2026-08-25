# This Commit Will be demonstrating how a terraform project looks like
## This is to help and understand a basic project Hierarchicy of any terraform proj


### Lets begin !
- main.tf 
    It defines the infrastructure resources we want Terraform to create or manage. 
- variables.tf 
    Declare all input variables 
- outputs.tf 
    Define what information to display after terraform apply
- versions.tf 
    Look terraform and provider versions for consistency 
- providers.tf 
    Configure cloud provider settings 
- backedn.tf 
    Configure where terraform stores the state file 
- terraform.tfvars
    Actual variable values for your project environment (Don't push it to git)
- 


