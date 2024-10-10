resource_group_name = "Demo-Inf-Prod-Rg0"
location            = "japaneast"
key_vault_name      = "Pwd9000-Inf-PRD-Kv"
use_rbac_mode       = true
apim_a_name         = "demo-inf-prod-apim001"
apim_b_name         = "demo-inf-prod-apim002"
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Pwd9000-ML/Azure-Terraform-Deployments"
  Environment         = "DEV"
}