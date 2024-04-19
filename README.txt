TF States Local
===============
terraform workspace list

Create new:
terraform workspace new [env_name]

Switch to workspace:
terraform workspace select [env_name]

Setup Azure Access
=================
1. az login
2. az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
3.  export ARM_CLIENT_ID="<APPID_VALUE>"
    export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
    export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
    export ARM_TENANT_ID="<TENANT_VALUE>"
4. export TF_LOG=TRACE && terraform workspace list
5. terraform init
5. terraform apply --var-file environments/envfilename


DEV Deploy
==========
terraform workspace select [env_name]
4. export TF_LOG=TRACE && terraform workspace list
5. terraform init
5. terraform apply --var-file environments/landingzone.dev.tfvars

Run terraform with your own azure account
==========================================
az login
az account list
az account set --subscription="SUBSCRIPTION_ID"