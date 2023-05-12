provider "aws" {
  region = "us-east-1"
  alias  = "aws001"
}

provider "aws" {
  region = "eu-west-1"
  alias  = "aws002"

  assume_role {
    role_arn = var.role_arn
  }
}

#export TF_VAR_role_arn="arn:aws:iam::xxxxxxxxxxxxxxx:role/AdminRole"
#export AWS_DEFAULT_REGION="eu-west-1"


