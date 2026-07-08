  module "vpc" {
    source = "git::https://github.com/swathibattula-B/terraform-vpc.git?ref=main"
    project = var.project
    environment =var.environment
    is_peering_required = true


  }