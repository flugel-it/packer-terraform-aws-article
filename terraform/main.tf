provider "aws" {
}

locals {
  common_tags = {
    Name = "${var.tag_name}"
  }
}
