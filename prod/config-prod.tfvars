resource_group_name = "Demo-Inf-Prod-Rg"
location            = "japaneast"
key_vault_name      = "Pwd9000-Inf-PRD-Kv"
use_rbac_mode       = true
apim_a_name         = "demo-inf-prod-apim01"
apim_b_name         = "demo-inf-prod-apim02"
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Pwd9000-ML/Azure-Terraform-Deployments"
  Environment         = "DEV"
}