

#!/bin/bash


echo "terraform destroy execution started"

export PATH=$PATH:/opt

terraform  -chdir=$1 destroy

echo "terraform destroy executed successfully"
