variable "env" {
  type = string
}

variable "account_id" {
  type = string
}

variable "assume_role_name" {
  type = string
}

variable "db_username" {
  type    = string
  default = "sotwAdminUser"
}