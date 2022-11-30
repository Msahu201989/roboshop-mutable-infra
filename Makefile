dev:
    rm -rf .terraform*
    terraform -f env-dev/Terrafile
    git pull
    #terraform init
    #terraform apply -auto-approve

prod:
     rm -rf .terraform*
     terraform -f env-prod/Terrafile
     git pull
     #terraform init
     #terraform apply -auto-approve

dev-destroy:
     rm -rf .terraform*
     terraform -f env-dev/Terrafile
     git pull
     #terraform init
     #terraform apply -auto-approve

prod-destroy:
     rm -rf .terraform*
     terraform -f env-prod/Terrafile
     git pull
     #terraform init
     #terraform apply -auto-approve