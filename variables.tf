variable "location" {
  type    = string
  default = "Central US"
}
variable "rgname" {
  type    = string
  default = "multi"
}

variable "env" {
  type = string
}
variable "tags" {
  type = map(string)
  default = {
    "Client"      = "OCC"
    "Environment" = "{local.environment}"
  }
}