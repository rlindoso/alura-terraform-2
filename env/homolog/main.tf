module "Homologation" {
  source = "../../infra"

  repositoryName = "homologation"
  description = "homolog-aplication"
  max = 2
  machine = "t2.micro"
  environment = "homologation-environment"
  aws_region = "us-east-2"
}