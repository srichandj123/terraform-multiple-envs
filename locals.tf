locals {
  rgname   = "multienv_cicd_${var.env}"
  vnetname = "multivnet_cicd-${var.env}"
  common_tags = {

    Client      = "OCC"
    Environment = var.env
  }
}