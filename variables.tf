variable "location" {
  type    = string
  default = "Central US"
}
variable "rgname" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "env" {
  type = string
}