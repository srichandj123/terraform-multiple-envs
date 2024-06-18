variable "location" {
  type    = string
  default = "Central US"
}
variable "rgname" {
  type = string
}
variable "tags" {
  type = map(string)
  default = {
    "Client"      = "OCC"
    "Environment" = "${env}"
  }
}
variable "env" {
  type = string
}