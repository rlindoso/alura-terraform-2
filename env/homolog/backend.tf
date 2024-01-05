terraform {
  backend "s3" {
    bucket = "terraform-state-rlindoso"
    key    = "homolog/terraform.tfstate"
    region = "us-east-2"
  }
}
