terraform {
  cloud {
    organization = "posfiap"

    workspaces {
      name = "fiap-aws-rds"
    }
  }
}
