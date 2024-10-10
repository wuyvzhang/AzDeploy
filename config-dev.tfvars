resource_group_name = "Demo-Inf-Dev-Rg"
location            = "UKSouth"
key_vault_name      = "Pwd9000-Inf-Dev-Kv"
use_rbac_mode       = true
apim01_name         = "demo-inf-dev-apim01"
apim02_name         = "demo-inf-dev-apim02"
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Pwd9000-ML/Azure-Terraform-Deployments"
  Environment         = "DEV"
}