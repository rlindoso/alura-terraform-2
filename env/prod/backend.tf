terraform {
  backend "s3" {
    bucket = "terraform-state-rlindoso"
    key    = "prod/terraform.tfstate"
    region = "us-east-2"
  }
}
