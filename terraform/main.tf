provider "aws" {
  version = "~> 2.0"
}

locals {
  common_tags = {
    Name = "${var.tag_name}"
  }
}
