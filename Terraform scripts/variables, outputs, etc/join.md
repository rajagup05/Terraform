

## Joins in terraform

The Terraform join function combines a list of strings into a single string, inserting a specified separator between each element. It is a built-in string manipulation function and cannot be used to combine two lists directly (use concat for that).

### Syntax

```
join(separator, list)
```

Here, `seperator`: The string delimiter placed between individual elements (e.g., ",", "-", " ").

`list` : The list or tuple containing the string elements you want to merge.

### Examples

1. **Basic Joining**

Combine a simple array of strings into a hyphen-separated or comma-separated string:

```
# Result: "production-us-east-1-web"
resource_name = join("-", ["production", "us-east-1", "web"])

# Result: "admin, developer, auditor"
security_groups = join(", ", ["admin", "developer", "auditor"])
```

2. **Handling a single element**

If the list only has one item, the function returns that item without adding the delimiter:

```
# Result: "standalone-node"
output = join("-", ["standalone-node"])
```

3. **Joining variables and resources**

You can use join to format tags, environment variables, or construct domain names dynamically from your variables:

```
variable "subdomains" {
  type    = list(string)
  default = ["api", "v1"]
}

# Result: "://company.com"
fqdn = "${join(".", var.subdomains)}.company.com"
```

















