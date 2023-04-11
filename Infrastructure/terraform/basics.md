# Terraform fundamentals

### Terraform workflow
1. init
   -  initialize a working dir with terraform config files in it
   -  download Providers
2. validate
   - validate terraform config files to ensure they are syntactically valid and internally consistent
3. plan
   - create execution plan
   - refresh and determines what actions are needed to achive the desired state specified in config files
4. apply
   - apply the changes to reach the desired state
5. destroy
   - destroy the Terraform-managed infrastructure
