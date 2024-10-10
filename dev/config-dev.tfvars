resource_group_name = "Demo-Inf-Dev-Rg"
location            = "japaneast"
key_vault_name      = "Pwd9000-Inf-Dev-Kv"
use_rbac_mode       = true
apim_a_name         = "demo-inf-dev-apim01"
apim_b_name         = "demo-inf-dev-apim02"
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Pwd9000-ML/Azure-Terraform-Deployments"
  Environment         = "DEV"
}