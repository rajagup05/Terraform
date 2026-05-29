
## Depends On in terraform

In Terraform, depends_on is a meta-argument used to define explicit dependencies between resources, modules, or data sources.

### How it works

Terraform normally builds a dependency graph automatically by looking at resource references (e.g., if Resource B uses an ID from Resource A, Resource A is created first).

However, some dependencies are "hidden." For instance, an application might need an IAM Role to be fully active before it can boot, even if the application code doesn't directly reference a specific attribute of that role. Use depends_on to force Terraform to complete all actions on the dependency object before starting work on the dependent one.

### Key usage scenarios
