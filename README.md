# alura-terraform-2
some commands:
* terraform init
* terraform plan
* terraform apply
* terraform output -> Shows the outputs from cloud
* terraform destroy -> Destry instances
* chmod 600 private-key.pem
* ansible-playbook playbook.yml -u ubuntu --private-key private-key.pem -i hosts.yml
    * -u -> user

* Create ssh keys with ssh-keygen
    * IaC-DEV
    * IaC-PROD

* zip -r production.zip Dockerrun.aws.json
* aws elasticbeanstalk update-environment --environment-name nome-do-ambiente --version-label nome-da-versão-cadastrada
