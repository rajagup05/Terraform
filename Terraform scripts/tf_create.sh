

#!/bin/bash


export PATH=$PATH:/opt

echo "create.sh script has started"



terraform  -chdir=$1 init

echo "terraform init executed successfully"

terraform  -chdir=$1 plan

echo "terraform plan executed successfully"

terraform  -chdir=$1 apply

echo "terraform apply executed successfully"
