# AKSwithTF

Super simple AKS single node cluster



to use:  
terraform init  
terraform apply --auto-approve  
terraform output -raw kube_config  > $HOME\.kube\config