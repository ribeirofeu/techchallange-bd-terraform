variable "region" {
  description = "AWS region"
}

variable "db_user_name" {
  description = "AWS db user name"
}

variable "db_pwd" {
  description = "AWS db password"
}

variable "db_name" {
  description = "Database name"
  default     = "techfood"
}
