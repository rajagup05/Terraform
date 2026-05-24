
## Terraform installation on cloud shell on CentOS

To install HashiCorp Terraform on a Cloud Shell environment running CentOS (or a RHEL-based distribution), follow these steps to add the official repository and install the package.

### 1. Update  system and install utilities

First, ensure your system utilities are up to date. You will need yum-utils to manage your repositories.

`sudo yum install -y yum-utils`

### 2. Add the Hashicorp repository

Add the official HashiCorp Linux repository to your local package manager. This ensures you can easily update Terraform in the future.

`sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo`

### Install Terraform

Once the repository is added, you can install the Terraform CLI directly.

`sudo yum -y install terraform`

### verify the installation

Confirm that the installation was successful and check the version by running:

`terraform -v` or `terraform --version`
















