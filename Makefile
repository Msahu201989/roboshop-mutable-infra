dev:
    rm -rf .terraform*
    git pull
    terraform -f env-dev/Terrafile
    terraform init -backend-config-env-dev/backend.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
     rm -rf .terraform*
     terraform -f env-prod/Terrafile
     git pull
     terraform init -backend-config-env-dev/backend.tfvars
     terraform apply -auto-approve -var-file=env-dev/main.tfvars


dev-destroy:
     rm -rf .terraform*
     git pull
     terraform -f env-dev/Terrafile
    terraform init -backend-config-env-dev/backend.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.tfvars


prod-destroy:
     rm -rf .terraform*
     git pull
     terraform -f env-prod/Terrafile
     terraform init -backend-config-env-dev/backend.tfvars
     terraform apply -auto-approve -var-file=env-dev/main.tfvars