terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "hello-world-cluster/terraform.tfstate"
    region = "us-east-1"
  }
}
