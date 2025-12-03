terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "infra/envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}
