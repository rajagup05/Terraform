
## Maps in terraform


In Terraform, a map is a collection type that stores data as key-value pairs where every value must share the same type constraint.

### example: 

```
# Defining a map variable
variable "instance_types" {
  type = map(string)
  default = {
    "dev"  = "t2.micro"
    "prod" = "m5.large"
  }
}

# Accessing a value using a key
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = var.instance_types["dev"]
}
```


Here, we created a map variable `instance_types` of type `map(string)` and it has two machine types values for dev and prod. Further, we created a resource `aws_instance` which is currently using dev machine type, however we can utilize prod in similar way in same resource or different resource. 













