
## list, count and length

To find the number of elements in a list in Terraform, you use the length function. This is commonly paired with the count meta-argument to create a specific number of resource instances based on that list's size.

### concepts: 

- `length()`: A built-in function that returns the total number of items in a list or map, or the number of characters in a string.
-  `count`: A meta-argument used within a resource block to specify how many instances of that resource to create.
-  `count.index`: An integer attribute that tracks the current iteration (starting from 0) when using count


### Implementation

You can dynamically scale your infrastructure by setting count equal to the length of a variable list. Use `count.index` to reference individual items from that list for each instance.

```
variable "subnet_names" {
  type    = list(string)
  default = ["web", "app", "db"]
}

resource "aws_subnet" "example" {
  # Dynamically set number of subnets based on list size (3)
  count = length(var.subnet_names)

  # Use count.index to pick the right name for each subnet
  tags = {
    Name = var.subnet_names[count.index]
  }
}
```

Here, `subnet_names` is a list variable and has 3 values. `count` represents how much time this resource block will be implemented like loops in programming. 











