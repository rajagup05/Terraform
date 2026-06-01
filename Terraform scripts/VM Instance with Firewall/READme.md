
To create compute engine VM Instance with Firewall, I will run the following commands:

- `ls` to see the `test_instance` folder where I have `main.tf` and `firewall.tf`
- Then I ran `./tf_create.sh test_instance/` to automatically run terraform init, terraform plan and terraform apply in one step. Please refer to `tf_create.sh` in parent folder
- After creation, I used `./tf_destroy.sh test_instance/` to destroy the created instances.
