
To create first compute engine VM Instance, I will run the following commands: 

1. `ls` to see the `first_instance` folder where I have `first_compute_instance.tf` and `variables.tf`
2.  Then I ran `./tf_create.sh first_instance/` to automatically run `terraform init`, `terraform plan` and `terraform apply` in one step. Please refer to `tf_create.sh`
3.  After creation, I used `tf_destroy.sh` to destroy the created instances.
