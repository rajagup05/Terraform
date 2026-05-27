

## what are variables

Terraform variables are essential for making your infrastructure-as-code reusable, flexible, and maintainable by avoiding hard-coded values. They act like function arguments in a programming language, allowing you to pass custom values into your configuration at runtime.

### examples

```
variable "environment" {
  type        = string
  default     = "staging"
  description = "The deployment stage target."
}
```

Here, `environment` is variable name. `staging` is value of it. variable type is `string` and we can add `description` for better understanding. 

### mapping variable example

```
variable "allowed_ips" {
  type        = list(string)
  default     = ["10.0.0.1", "10.0.0.2"]
  description = "List of approved IP addresses."
}
```

Here, `allowed_ips` is mapping variable of type `string` and its values are enclosed into big brackets [] with `description`













