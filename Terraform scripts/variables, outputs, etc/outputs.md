
## what are outputs

In Terraform, outputs are like return values for your infrastructure code. They allow you to export information about your resources—like IP addresses, DNS names, or ARNs—so you can see them in your terminal or share them with other modules and tools.

### why use outputs

- **Visibility**: Instantly see critical resource details (e.g., a load balancer's URL) in the CLI after running terraform apply.
- **Module Communication**: Pass data from a child module (e.g., a VPC ID) up to the parent module so other resources can use it.
- **Remote State Sharing**: Let entirely separate Terraform projects access your data using the terraform_remote_state data source.
- **Automation**: Pipe structured data (like JSON) into scripts or CI/CD pipelines.

### syntax

You declare outputs in a .tf file (often named outputs.tf) using an output block.

```
output "instance_ip_addr" {
  description = "The public IP address of the main web server"
  value       = aws_instance.web.public_ip
}
```
Here, 
- `instance_ip_addr` is the arbitrary name given to the output block in the configuration example.It acts as a label or variable name for the exported data. When you run terraform apply or terraform output, Terraform uses this exact name to display the value in your terminal
- under value , `aws_instance` is the cloud provider name, `web` is the local name of the resource, `public_ip` is the one of the field under this resource which conatains IP address

**when we run terraform apply, we see output as follows:**

```
Changes to Outputs:
  + instance_ip_addr = "54.214.33.10"
```














