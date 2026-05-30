
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

### 2. conditional resource creation (using count): 

To decide whether a resource should be created at all, combine a ternary operator with the count meta-argument. Setting count = 1 creates the resource, while count = 0 skips it entirely.

```
variable "create_public_bucket" {
  type    = bool
  default = false
}

resource "aws_s3_bucket" "public_bucket" {
  # If true, count is 1 (creates bucket). If false, count is 0 (skips creation).
  count  = var.create_public_bucket ? 1 : 0
  bucket = "my-conditional-bucket-xyz"
}
```

### 3. Filtering conditionals (using `for` with `if`):

When looping through maps or lists with a for expression, you can append an if clause to filter out unwanted items.

```
locals {
  users = {
    alice = { role = "admin" }
    bob   = { role = "member" }
    charlie = { role = "admin" }
  }

  # Filters and lists only the users who have an "admin" role
  admin_users = [for name, user in local.users : name if user.role == "admin"]
}
```




































