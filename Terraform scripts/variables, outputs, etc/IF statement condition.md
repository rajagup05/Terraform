
## IF statement condition

Terraform does not have a traditional if statement; instead, it uses a ternary operator syntax to handle conditional logic.

**syntax**: `condition ? true_val : false_val`

### 1. conditional attribute assignment

You can use ternary expressions to choose values for a resource attribute dynamically based on a boolean check.

```
variable "environment" {
  type    = string
  default = "dev"
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  # If environment is prod, use t3.medium, otherwise use t2.micro
  instance_type = var.environment == "prod" ? "t3.medium" : "t2.micro"
}
```
