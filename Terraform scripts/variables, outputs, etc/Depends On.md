
## Depends On in terraform

In Terraform, depends_on is a meta-argument used to define explicit dependencies between resources, modules, or data sources.

### How it works

Terraform normally builds a dependency graph automatically by looking at resource references (e.g., if Resource B uses an ID from Resource A, Resource A is created first).

However, some dependencies are "hidden." For instance, an application might need an IAM Role to be fully active before it can boot, even if the application code doesn't directly reference a specific attribute of that role. Use depends_on to force Terraform to complete all actions on the dependency object before starting work on the dependent one.

### Key usage scenarios

- **Hidden Dependencies**: When a resource depends on another's existence but doesn't reference any of its data.
- **Module Ordering**: Ensuring an entire module finishes its deployment before another begins.
- **Data Source Timing**: Forcing a data source to wait until a specific resource is created so it can query the most recent information.


### example

```
resource "aws_iam_role_policy" "example" {
  # ... configuration ...
}

resource "aws_instance" "example" {
  # ... configuration ...

  # Force this instance to wait until the policy is attached
  depends_on = [
    aws_iam_role_policy.example,
  ]
}
```

### Best practices and pitfall

- **Use as a Last Resort**: Overusing depends_on makes your configuration less flexible and can lead to conservative plans where resources are unnecessarily replaced.
- **Implicit is Better**: Always prefer implicit dependencies (referencing attributes like aws_instance.example.id) because they allow Terraform to be more precise about what specifically needs to change.
- **Data Source Warnings**: Using depends_on with data sources can cause them to be deferred until the "apply" phase, which might hide information during the "plan" phase.



























