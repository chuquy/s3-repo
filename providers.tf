provider "aws" {
  alias  = "account_a"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::222634362165:role/terraform-module-role"
  }
}

provider "aws" {
  alias  = "account_b"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::204326978364:role/terraform-module-role"
  }
}