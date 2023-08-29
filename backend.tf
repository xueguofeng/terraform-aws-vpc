terraform {
  backend "s3" {
    bucket = "richard.xgf"
    key    = "terraform/backend" # richard.xgf/terraform/backend -  the tfstate file
    region = "us-west-2"
  }
}
