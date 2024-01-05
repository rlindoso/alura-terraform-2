module "Production" {
  source = "../../infra"

  repositoryName = "production"
  description = "prod-aplication"
  max = 5
  machine = "t2.micro"
  environment = "production-environment"
  aws_region = "us-east-2"
}