variable "env" {
  type = string
}

variable "account_id" {
  type = string
}

variable "assume_role_name" {
  type = string
}

variable "domain_name" {
  default = "sotw-app.com"
  type    = string
}