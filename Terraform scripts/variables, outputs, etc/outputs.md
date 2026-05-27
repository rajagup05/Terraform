
## what are outputs

In Terraform, outputs are like return values for your infrastructure code. They allow you to export information about your resources—like IP addresses, DNS names, or ARNs—so you can see them in your terminal or share them with other modules and tools.

### why use outputs

- **Visibility**: Instantly see critical resource details (e.g., a load balancer's URL) in the CLI after running terraform apply.
- **Module Communication**: Pass data from a child module (e.g., a VPC ID) up to the parent module so other resources can use it.
- **Remote State Sharing**: Let entirely separate Terraform projects access your data using the terraform_remote_state data source.
- **Automation**: Pipe structured data (like JSON) into scripts or CI/CD pipelines.
